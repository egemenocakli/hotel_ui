import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_ui_kit/constants/app_constants.dart';
import 'package:new_ui_kit/pages/main/view/main_menu_view.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';
import 'package:new_ui_kit/utils/extensions/decorations.dart';
import 'package:new_ui_kit/constants/texts.dart';

class LoginPageView extends StatelessWidget with DecorationMixin {
  const LoginPageView({super.key});

//TODO: sayfanın boşluk ve düzen planlaması için row veya column içindeki
//widgetları expanded a ayırmam gerekiyor ve bunlara flex parametresindeki değerlere göre sayfyı bölmem lazım
//ama stack olduğundan bu yapılamıyor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
          height: context.height,
          width: context.width,
          decoration:
              const BoxDecoration(image: DecorationImage(image: AssetImage(("assets/images/5.jpg")), fit: BoxFit.fill)),
        ),
        Positioned(
            height: context.height * 0.3, //300,
            width: context.width * 0.5, //200,
            top: context.height / 5,
            left: context.width / 4,
            child: Text(
              Texts.hotelName,
              style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontSize: AppFontSize.fontSizeSpecial,
                    fontWeight: FontWeight.w300,
                  ),
            )),
        Positioned(
          width: context.width,
          height: AppSizes.sizeXXLarge,
          top: context.height * (0.5) + 20, //440,
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
        ),
        Positioned(
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
        ),
        Positioned(
          top: context.height * 0.7, //600,
          height: AppSizes.sizeXXLarge,
          width: context.width * 0.7, //300,
          left: context.width / 8,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => AppColors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0), side: const BorderSide(color: AppColors.white)))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainMenuView(),
                    ));
              },
              child: Text(
                Texts.login,
                style: TextStyle(color: AppColors.blue),
              )),
        ),
        Positioned(
          top: context.height * 0.7 + 60, //660,
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
        ),
        Positioned(
          bottom: AppSizes.sizeXXLarge,
          left: context.width / 5.4,
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: const BorderRadius.all(Radius.circular(AppSizes.sizeLarge))),
            height: AppSizes.sizeXXLarge,
            width: 120,
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
        ),
        Positioned(
          bottom: AppSizes.sizeXXLarge,
          left: context.width / 1.9,
          child: Container(
            decoration: const BoxDecoration(
                color: AppColors.white, borderRadius: BorderRadius.all(Radius.circular(AppSizes.sizeLarge))),
            height: AppSizes.sizeXXLarge,
            width: 120,
            child: InkWell(
              child: TextButton.icon(
                  onPressed: () {}, icon: const Icon(Icons.facebook_outlined), label: const Text(Texts.twitter)),
            ),
          ),
        )
      ]),
    );
  }
}
