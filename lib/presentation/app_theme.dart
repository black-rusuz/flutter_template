import 'package:flutter/material.dart';

// TODO: Тема
class AppTheme {
  static ThemeData get() {
    return _theme;
  }

  static final ThemeData _theme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: _textTheme,
  );

  static const TextTheme _textTheme = TextTheme();
}
