class ReservationService {}

  /*
  Future<bool> loginPost({LoginModel? request}) async {
    var url = NetworkUrls().loginUrl;
    var response =
        await NetworkService().makeRequest(url, body: json.encode(request?.toJson()), type: RequestType.post);
    if (response == LoginResponseTokenModel) {
      print(response);
      return true;
    } else if (response.statusCode != 200) {
      print("Login Error");
      return false;
    }
    return true;
  }
  */

/*
  Future<dynamic> userSignUpPost(SignUpRequest request) async {
    var url = NetworkUrls().signUpUrl;
    var response = await NetworkService().makeRequest(url,
        body: json.encode(request.toJson()), type: RequestType.post);
    if (response.isSuccessful &&
        response.data != null &&
        response.data!.isNotEmpty) {
      return true;
    } else if (response.isSuccessful == false &&
        response.data == null &&
        response.message == "alreadyRegisteredUser") {
      return "alreadyRegisteredUser";
    }
    return false;
  }
  */