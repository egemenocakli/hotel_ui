import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  static final NetworkService _instance = NetworkService.internal();

  NetworkService.internal();

  factory NetworkService() => _instance;

  final JsonDecoder _decoder = const JsonDecoder();

  Future makeRequest(String url, {body, int timeOutInSec = 15, required RequestType type}) async {
    //if (false) //(await checkConnectivity() == ConnectivityResult.none) { //TODO: control for internet connection package for intern

    //return NetworkResponseModel(
    //message: "Connection Error");

    var httpHeader = {
      "accept": "application/json",
      "Content-Type": "application/json",
      // if (url != NetworkUrls().apiTokenCreateUrl) "Authorization": "Bearer $token",
    };

    try {
      switch (type) {
        case RequestType.get:
          return http
              .get(Uri.parse(url), headers: httpHeader)
              .timeout(Duration(seconds: timeOutInSec))
              .catchError((_) => http.Response('{"Status": "UnKnown"}', 500))
              .then((response) => parseResponse(response));
        case RequestType.post:
          return http
              .post(Uri.parse(url), body: body, headers: httpHeader)
              .timeout(Duration(seconds: timeOutInSec))
              .catchError((error) => http.Response('{"Status": "UnKnown"}', 500))
              .then((response) => parseResponse(response));
      }
    } catch (e) {
      return "Error"; //NetworkResponseModel(message: "LocaleKeys.sthWentWrong.locale");
    }
  }

  FutureOr parseResponse(http.Response response) async {
    try {
      String apiResponse = response.body;
      //int statusCode = response.statusCode;
      debugPrint("API Response: $apiResponse");
      var result = _decoder.convert(apiResponse);
      if (response.statusCode == 200) {
        //var data = (result["data"] as List?);
        return response; //NetworkResponseModel(isSuccessful: true, data: data, message: result["message"]);
      } else {
        return response; //NetworkResponseModel(isSuccessful: false, message: result["message"] ?? "LocaleKeys.sthWentWrong.locale");
      }
    } catch (e) {
      return "Error"; //NetworkResponseModel(message: "LocaleKeys.sthWentWrong.locale");
    }
  }
}

enum RequestType { get, post }

/*
class NetworkResponseModel {
  final bool isSuccessful;
  final String? statusCode;
  final String? message;
  final List<dynamic>? data;

  NetworkResponseModel({
    this.isSuccessful = false,
    this.message,
    this.data,
    this.statusCode,
  });
}
*/
