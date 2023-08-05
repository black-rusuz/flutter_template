import 'package:flutter/material.dart';

// TODO: Тема
class AppTheme {
  static ThemeData get() {
    return _theme;
  }

  static final ThemeData _theme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(),
  );
}

MaterialColor _createMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: color.withOpacity(0.05),
    100: color.withOpacity(0.1),
    200: color.withOpacity(0.2),
    300: color.withOpacity(0.3),
    400: color.withOpacity(0.4),
    500: color.withOpacity(0.5),
    600: color.withOpacity(0.6),
    700: color.withOpacity(0.7),
    800: color.withOpacity(0.8),
    900: color.withOpacity(0.9),
  });
}
