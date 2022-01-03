import 'package:flutter/material.dart';
import 'package:plant_a_tree/configs/theme/style.dart';

final darkTheme = ThemeData.dark().copyWith(
  colorScheme: _colorScheme,
  scaffoldBackgroundColor: _colorScheme.surface,
  appBarTheme: getAppBarTheme(_colorScheme),
  bottomNavigationBarTheme: getBottomNavigationBarThemeData(_colorScheme),
);

final _colorScheme = const ColorScheme.dark().copyWith(
  primary: const Color(0xFF26A98F),
  onPrimary: const Color(0xFFFFFFFF),
  surface: const Color(0xFF000000),
  onSurface: const Color(0xFFFFFFFF),
  background: const Color(0xFF111111),
  onBackground: const Color(0xFFffffff),
);
