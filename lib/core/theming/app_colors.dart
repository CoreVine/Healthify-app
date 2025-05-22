import 'package:flutter/material.dart';

class AppColors {
  static Color transparent=Colors.transparent;
  static Color main = Color(0XFF42960F);
  static Color secondary = Color(0XFFFF7A00);
  static Color accent = Color(0XFF2096F3);
  static Color text1 = Color(0XFF333333);
  static Color text2 = Color(0XFF666666);
  static Color white = Color(0XFFFFFFFF);
  static Color background = Color(0XFFECF5E7);
  static Color stroke = Color(0XFFE0DFD5);
  static Color gray = Color(0xFFF2F8F2);

  // Optional: Add a method to create a MaterialColor from a single Color
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
