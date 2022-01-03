import 'package:flutter/material.dart';
import 'package:plant_a_tree/configs/theme/style.dart';

final lightTheme = ThemeData.light().copyWith(
  colorScheme: _colorScheme,
  scaffoldBackgroundColor: _colorScheme.surface,
  appBarTheme: getAppBarTheme(_colorScheme),
);

final _colorScheme = const ColorScheme.light().copyWith(
  primary: const Color(0xFF26A98F),
  onPrimary: const Color(0xFFFFFFFF),
  surface: const Color(0xFFF9F9F9),
  onSurface: const Color(0xFF000000),
  background: const Color(0xFFffffff),
  onBackground: const Color(0xFF000000),
);
