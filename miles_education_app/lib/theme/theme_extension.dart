import 'package:flutter/material.dart';
import 'package:miles_education_app/theme/app_colors.dart';
import 'package:miles_education_app/theme/theme_extension.dart';
import 'theme_extension.dart';

extension BuildContextExtn on BuildContext {
  AppThemeExtn get appTheme => Theme.of(this).extension<AppThemeExtn>()!;
}

class AppThemeExtn extends ThemeExtension<AppThemeExtn> {
  Color white;
  Blue blue;
  Black black;
  Color grey;
  AppThemeExtn({
    required this.white,
    required this.black,
    required this.blue,
    required this.grey,
  });
  @override
  ThemeExtension<AppThemeExtn> copyWith(
      {Color? white, Black? black, Blue? blue, Color? grey}) {
    return AppThemeExtn(
      white: white ?? this.white,
      black: black ?? this.black,
      blue: blue ?? this.blue,
      grey: grey ?? this.grey,
    );
  }

  @override
  ThemeExtension<AppThemeExtn> lerp(
          covariant ThemeExtension<AppThemeExtn>? other, double t) =>
      this;
}
