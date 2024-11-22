import 'package:flutter/material.dart';

  //TODO agregar los colores necesarios.

class AppTheme{
  static final dark=ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF1b2838),
      onPrimary: Color(0Xffc7d5e0),
      surface: Color(0xFF171a21),
      onSurface: Color(0xFF66c0f4),
    ),
    textTheme: const TextTheme(
        labelLarge: TextStyle(color: Color(0Xffc7d5e0), fontSize: 20, fontFamily: 'Roboto'),
        labelMedium: TextStyle(color: Color(0Xffc7d5e0), fontSize: 14),
        labelSmall: TextStyle(color: Color(0Xffc7d5e0), fontSize: 10),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: const Color(0Xffc7d5e0),
      selectionColor: const Color(0Xffc7d5e0).withOpacity(0.5)
    ),
    focusColor:  Colors.white.withOpacity(0.12),
    useMaterial3: true
  );
  static final light=ThemeData(
    colorScheme: const ColorScheme.light(),
    focusColor:  Colors.black.withOpacity(0.12),
    useMaterial3: true
  );
}