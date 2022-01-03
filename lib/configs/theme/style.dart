import 'package:flutter/material.dart';

AppBarTheme getAppBarTheme(ColorScheme colorScheme) {
  return const AppBarTheme().copyWith(
    elevation: 0,
    centerTitle: true,
    backgroundColor: colorScheme.surface,
    foregroundColor: colorScheme.onSurface,
    titleTextStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: colorScheme.onSurface,
    ),
  );
}

BottomNavigationBarThemeData getBottomNavigationBarThemeData(
    ColorScheme colorScheme) {
  return BottomNavigationBarThemeData(
    elevation: 0,
    type: BottomNavigationBarType.fixed,
    backgroundColor: colorScheme.background,
    selectedIconTheme: IconThemeData(color: colorScheme.primary),
    selectedItemColor: colorScheme.primary,
    unselectedItemColor: colorScheme.onBackground.withOpacity(0.5),
    unselectedIconTheme: IconThemeData(
      color: colorScheme.onBackground.withOpacity(0.5),
    ),
    enableFeedback: false,
    selectedLabelStyle: TextStyle(
      fontSize: 12,
      color: colorScheme.primary,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
      color: colorScheme.onBackground.withOpacity(0.5),
    ),
  );
}
