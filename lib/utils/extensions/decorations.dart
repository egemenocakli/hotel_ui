import 'package:flutter/material.dart';

mixin DecorationMixin {
  InputDecoration loginInputDecoration({String? hintText, String? labelText}) {
    return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.white),
      filled: true,
      fillColor: Colors.white54,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.black)),
    );
  }
}

/*
extension BorderInputDecoration on InputDecoration {
  static InputDecoration get loginInputDecoration => InputDecoration(
        filled: true,
        fillColor: Colors.white54,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.black)),
      );
} //TODO: Neden illa static yapmak zorudnayız?
*/
/* 

extension TextStyleExtension on BuildContext {
  TextStyle get textStyle => Theme.of(this).textTheme.caption!.copyWith(
        letterSpacing: AppLetterSpacing.letterspacingXSmall,
        fontSize: AppFontSize.fontSizeLarge.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.backgroundColor,
      );
  TextStyle get hintTextStyle => Theme.of(this).textTheme.caption!.copyWith(
      letterSpacing: AppLetterSpacing.letterspacingXSmall,
      fontSize: AppFontSize.fontSizeAvarage.sp,
      color: AppColors.hintTextColor);
  TextStyle get dropDownWidgetInsideListTextTheme =>
      Theme.of(this).textTheme.caption!.copyWith(
          letterSpacing: AppLetterSpacing.letterspacingXSmall,
          fontSize: AppFontSize.fontSizeAvarage.sp,
          color: AppColors.textTitleGrey);
  TextStyle get headerTextStyle => Theme.of(this).textTheme.caption!.copyWith(
        letterSpacing: AppLetterSpacing.letterspacingXSmall,
        fontSize: AppFontSize.fontSizeValidator.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textTitleGrey,
      );
  TextStyle get textFieldStyle => Theme.of(this).textTheme.caption!.copyWith(
      letterSpacing: AppLetterSpacing.letterspacingXSmall,
      fontSize: AppFontSize.fontSizeAvarage.sp,
      color: AppColors.borderColorBlack);
  TextStyle get buttonTextStyle => Theme.of(this).textTheme.caption!.copyWith(
        letterSpacing: AppLetterSpacing.letterspacingSmall,
        fontSize: AppFontSize.fontSizeMedium.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.backgroundColor,
      );
}

*/