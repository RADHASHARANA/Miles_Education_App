import 'dart:ui';

abstract class AppColors {
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color blue = Color(0xff0000FF);
  static const Color grey = Color(0xff333333);
}

class Blue {
  Color darkShadeBlue;
  Color blue;
  Blue({required this.darkShadeBlue, required this.blue});
}

class Black {
  Color black;
  Color blackOnePercent;
  Black({
    required this.black,
    required this.blackOnePercent,
  });
}
