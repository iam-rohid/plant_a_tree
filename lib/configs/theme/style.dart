import 'package:flutter/material.dart';

AppBarTheme getAppBarTheme(ColorScheme colorScheme) {
  return AppBarTheme().copyWith(
    elevation: 0,
    centerTitle: true,
    backgroundColor: colorScheme.surface,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: colorScheme.onSurface,
    ),
  );
}