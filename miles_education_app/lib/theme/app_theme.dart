import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:miles_education_app/theme/app_colors.dart';
import 'package:miles_education_app/theme/theme_extension.dart';

class AppTheme {
  AppTheme();
  List<AppThemeExtn> extensions = [
    AppThemeExtn(
      white: AppColors.white,
      black: Black(
        black: AppColors.black,
        blackOnePercent: Color(0x01031103),
      ),
      blue: Blue(
        darkShadeBlue: Color(0xff0C1F33),
        blue: AppColors.black,
      ),
      grey: AppColors.grey,
    ),
  ];
  AppBarTheme get appBarTheme => AppBarTheme(color: Color(0xff010311));
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        extensions: extensions,
        appBarTheme: appBarTheme,
      );
}
