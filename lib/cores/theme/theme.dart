import 'package:flutter/material.dart';

class AppPalette {
  static const Color primaryColor = Color(0xFF03AED2);
  static const Color secondaryColor = Color(0xFF68D2E8);
  static const Color borderColor = Color(0xFFB3C8CF);
  static const Color errorColor = Color(0xFFFA7070);
}

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(22),
      border: _inputBorder(),
      enabledBorder: _inputBorder(),
      errorBorder: _inputBorder(AppPalette.errorColor),
      focusedBorder: _inputBorder(AppPalette.primaryColor),
      focusedErrorBorder: _inputBorder(AppPalette.errorColor),
    ),
  );

  static _inputBorder([
    Color color = AppPalette.borderColor,
  ]) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      );
}
