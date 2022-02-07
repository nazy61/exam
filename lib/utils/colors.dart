import 'package:flutter/material.dart';

class AppCustomColors {
  static MaterialColor primaryColor = const MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(_primaryValue),
      100: Color(_primaryValue),
      200: Color(_primaryValue),
      300: Color(_primaryValue),
      400: Color(_primaryValue),
      500: Color(_primaryValue),
      600: Color(_primaryValue),
      700: Color(_primaryValue),
      800: Color(_primaryValue),
      900: Color(_primaryValue),
    },
  );
  static const int _primaryValue = 0xFF1e3d59;
  static Color background = const Color(0xFFf5f0e1);
  static Color error = const Color(0xFFff6e40);
  static Color status = const Color(0xFFffc13b);
}
