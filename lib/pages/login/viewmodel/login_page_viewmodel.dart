import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_ui_kit/base/viewmodel/base_view_model.dart';
import 'package:new_ui_kit/pages/login/login_service.dart';
import 'package:new_ui_kit/pages/login/model/login_model.dart';

class LoginPageViewModel extends BaseViewModel {
  final LoginService service;

  LoginPageViewModel({required this.service});
  LoginModel loginPost = LoginModel();
  dynamic isSignUpSucces;

  @override
  FutureOr<void> init() async {}

  //getters

  //setters

  Future<dynamic> loginPostRequest(BuildContext context) async {
    loginPost.email = "eve.holt@reqres.in";
    loginPost.password = "cityslicka";
    isLoading = true;
    isSignUpSucces = await service
        .loginPost(request: loginPost)
        .whenComplete(() => isLoading = false); //userSignUpPost(signUpRequest).whenComplete(() => isLoading = false);
    isLoading = false;
    return isSignUpSucces;
  }
}
