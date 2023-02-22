import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_ui_kit/base/view/base_view.dart';
import 'package:new_ui_kit/constants/app_constants.dart';
import 'package:new_ui_kit/pages/login/login_service.dart';
import 'package:new_ui_kit/pages/main/view/main_menu_view.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';
import 'package:new_ui_kit/utils/extensions/decorations.dart';
import 'package:new_ui_kit/constants/texts.dart';

import '../viewmodel/login_page_viewmodel.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> with DecorationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: BaseView<LoginPageViewModel>(
            vmBuilder: (_) => LoginPageViewModel(service: LoginService()), builder: _buildScreen));
  }

  Widget _buildScreen(BuildContext context, LoginPageViewModel viewModel) {
    return Stack(
      children: [
        backgroundImage(context),
        hotelName(context),
        emailField(context),
        passwordField(context),
        loginButton(context, viewModel),
        signUpButton(context),
        facebookButton(context),
        twitterButton(context)
      ],
    );
  }

  Positioned twitterButton(BuildContext context) {
    return Positioned(
      bottom: AppSizes.sizeXXLarge,
      left: context.width / 1.9,
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.all(Radius.circular(AppSizes.sizeLarge))),
        height: AppSizes.sizeXXLarge,
        width: context.width * 0.3, //120,
        child: InkWell(
          child: TextButton.icon(
              onPressed: () {}, icon: const Icon(Icons.facebook_outlined), label: const Text(Texts.twitter)),
        ),
      ),
    );
  }

  Positioned facebookButton(BuildContext context) {
    return Positioned(
      bottom: AppSizes.sizeXXLarge,
      left: context.width / 5.4,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.blue, borderRadius: const BorderRadius.all(Radius.circular(AppSizes.sizeLarge))),
        height: AppSizes.sizeXXLarge,
        width: context.width * 0.3,
        child: InkWell(
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.facebook_outlined, color: AppColors.white),
            label: const Text(
              Texts.facebook,
              style: TextStyle(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }

  Positioned signUpButton(BuildContext context) {
    return Positioned(
      top: context.height * 0.77, //660,
      height: AppSizes.sizeXXLarge,
      width: context.width * 0.7, //300,
      left: context.width / 8,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => AppColors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: AppColors.red)))),
          onPressed: () {},
          child: const Text(
            Texts.signUp,
            style: TextStyle(color: AppColors.white),
          )),
    );
  }

  Positioned loginButton(BuildContext context, LoginPageViewModel viewModel) {
    return Positioned(
      top: context.height * 0.7, //600,
      height: AppSizes.sizeXXLarge,
      width: context.width * 0.7, //300,
      left: context.width / 8,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => AppColors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0), side: const BorderSide(color: AppColors.white)))),
          onPressed: () async {
            await viewModel.loginPostRequest(context) == true
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainMenuView(),
                    ))
                : const SizedBox();
          },
          child: Text(
            Texts.login,
            style: TextStyle(color: AppColors.blue),
          )),
    );
  }

  Positioned passwordField(BuildContext context) {
    return Positioned(
      top: context.height * 0.6,
      height: AppSizes.sizeXXLarge,
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.sizeLarge),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
            child: TextFormField(
              decoration: loginInputDecoration(hintText: Texts.password),
            ),
          ),
        ),
      ),
    );
  }

  Positioned emailField(BuildContext context) {
    return Positioned(
      width: context.width,
      height: AppSizes.sizeXXLarge,
      top: context.height * (0.53), // + 20, //440,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.sizeLarge),
        child: ClipRRect(
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
              child: TextFormField(
                decoration: loginInputDecoration(hintText: Texts.email),
              )),
        ),
      ),
    );
  }

  Positioned hotelName(BuildContext context) {
    return Positioned(
        height: context.height * 0.3, //300,
        width: context.width * 0.5, //200,
        top: context.height / 5,
        left: context.width / 4,
        child: Text(
          Texts.hotelName,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontSize: AppFontSize.fontSizeSpecial,
                fontWeight: FontWeight.w300,
              ),
        ));
  }

  Container backgroundImage(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      decoration:
          const BoxDecoration(image: DecorationImage(image: AssetImage(("assets/images/5.jpg")), fit: BoxFit.fill)),
    );
  }
}
