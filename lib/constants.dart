import 'package:flutter/material.dart';


class AppConstants {
  static const beigeColor = Color(0xFF1C0F0D);
  static const mainColor = Color(0xFFFD5D69);
  static const pinkSub = Color(0xFFEC888D);
  static const pink = Color(0xFFFFC6C9);

  static ThemeData appThemeData = ThemeData(
    scaffoldBackgroundColor: AppConstants.beigeColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppConstants.beigeColor,
      titleSpacing: Screen.padding36,
    ),
    primaryColor: mainColor,
    colorScheme: const ColorScheme(
        primary: mainColor,
        secondary: pink,
        onPrimary: Colors.white,
        onSecondary: mainColor,
        brightness: Brightness.dark,
        error: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black,
        onError: Colors.black,
    ),
    useMaterial3: true,
    fontFamily: "Poppins",
  );
}

class Screen {
  static late double width;
  static late double height;
  static late double padding36;
  static late double appBarPadding;

  static late double wratio;
  static late double hratio;

  static void init(BuildContext context){
    final size = MediaQuery.sizeOf(context);
    width = size.width;
    height = size.height;

    wratio = width / 430;
    hratio = height / 932;

    padding36 = 36 * wratio;
    appBarPadding = 20.0;
  }
}
