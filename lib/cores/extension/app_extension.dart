import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenPaddingTop => MediaQuery.of(this).padding.top;

  double get screenPaddingBottom => MediaQuery.of(this).padding.bottom;
}
