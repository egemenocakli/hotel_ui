import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff7065e4);
  static const white = Colors.white;
  static const backgroundColor = Colors.white;
  static const colorCyan = Colors.cyan;
  static const borderColorBlack = Colors.black45;
  static const errorTextColor = Colors.red;
  static const alertBackgroundColor = Color(0xFF527DAA);
  static const hintTextColor = Colors.grey;
  static const textColorBlack = Colors.black;
  static Color greys6 = Colors.grey.shade600;
  static Color blue = Colors.blue;
  static Color red = Colors.red;
  static Color bGrey = Colors.blueGrey;
  static Color desiredDawn = const Color(0xFFD8D8D8);
  static List<Color> tabbarColors = [const Color(0xFF02AABD), const Color(0xFF00CDAC)];
  static List<Color> gradientBackgroundColors = [const Color(0xFFEAD6EE), const Color(0xFFA0F1EA)];

/*
Color(0xFF282A3A),

Color(0xFF00AFB9),

#tabbar color
colors: <Color>[
            Color(0xFF02AABD),
            Color(0xFF00CDAC),
          ],

#background
colors: <Color>[
                    Color(0xFFEAD6EE),
                    Color(0xFFA0F1EA),
                  ],

 */
}

class AppImages {
  static const baseImageUrl = 'assets/';
}

class AppWidth {
  static const int widthXXXXSmall = 5;
  static const int widthXXXSmall = 10;
  static const int widthXXSmall = 20;
  static const int widthAvarage = 65;
  static const int widthIcon = 85;
  static const int widthMedium = 50;
}

class AppBorderWidth {
  static const double smallBorderWidth = 1.5;
}

class AppHeight {
  static const double heightValidator = 0.4;
  static const int heightZero = 0;
  static const int heightXXXXSmall = 4;
  static const int heightXXXSmall = 15;
  static const int heightXXSmall = 20;
  static const int heigtLoginForm = 36;
  static const int heightXSmall = 40;
  static const int heightIcon = 45;
  static const int heightAvarage = 65;
  static const int heightSmall = 80;
  static const int heightLarge = 270;
}

class AppLetterSpacing {
  static const double letterspacingZero = 0;
  static const double letterspacingXSmall = 0.1;
  static const double letterspacingSmall = 0.2;
  static const double leterSpacingLarge = 0.6;
}

class AppFontSize {
  static const double fontSizeZero = 0;
  static const double fontSizeXSmall = 10;
  static const double fontSizeSmall = 12;
  static const double fontSizePageEnd = 13;
  static const double fontSizeValidator = 14;
  static const double fontSizeAvarage = 15;
  static const double fontSizeMedium = 17;
  static const double fontSizeLarge = 20;
  static const double fontSizeXLarge = 22;
  static const double fontSizeSpecial = 80;
}

class AppElevation {
  static const double elevationXSmall = 6;
  static const double elevationSmall = 8;
}

class AppSpacing {
  //Padding
  static const int spacingZero = 0;
  static const int spacingXSmall = 4;
  static const int spacingSmall = 8;
  static const int spacingMedium = 12;
  static const int spacingAvarage = 14;
  static const int spacingLarge = 16;
  static const int spacingXLarge = 20;
  static const int spacingXXLarge = 32;
  static const int spacingXXXLarge = 36;
  static const int spacingXXXXLarge = 40;
  static const int spacingXXXXXLarge = 50;
}

class AppSizes {
  static const double sizeZero = 0;
  static const double sizeXSmall = 5;
  static const double sizeSmall = 10;
  static const double sizeMedium = 15;
  static const double sizeLarge = 20;
  static const double sizeXLarge = 30;
  static const double sizeXXLarge = 50;
  static const double sizeXXXLarge = 55;
  static const double sizeXXXXLarge = 60;
  static const double checkBoxIconSize = 16;
  static const double appBarArrowBackSize = 40;
  static const double appBarArrowBackRadiusVal = 8;
  static const double borderSmall = 6;
  static const double borderMedium = 8;
  static const double borderRadiusCircular = 17;
  static const double pageStartPadding = 120;
}

class BorderRadiusValues {
  static BorderRadius? get borderRadius30 => const BorderRadius.all(Radius.circular(30));
}

class AppTexts {
  static const String signUpLicenseLink =
      "https://drive.google.com/file/d/12EgwVYUJIrAw1sl3g6yk5kfGkKht0D0J/view?usp=sharing";
}

class CustomBoxDeco extends BoxDecoration {
/*
@override
  // TODO: implement image
  DecorationImage? get image => const DecorationImage(
        image: AssetImage("assets/images/oda4.jpg"),
      );
      */
  @override
  // TODO: implement borderRadius
  BorderRadiusGeometry? get borderRadius =>
      const BorderRadius.only(topLeft: Radius.elliptical(90, 60), bottomRight: Radius.elliptical(90, 60));
}
