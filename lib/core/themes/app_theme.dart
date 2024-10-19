import 'package:flutter/material.dart';

  //TODO agregar los colores necesarios.

class AppTheme{
  static final dark=ThemeData(
    colorScheme: const ColorScheme.dark(),
    focusColor:  Colors.white.withOpacity(0.12),
    useMaterial3: true
  );
  static final light=ThemeData(
    colorScheme: const ColorScheme.light(),
    focusColor:  Colors.black.withOpacity(0.12),
    useMaterial3: true
  );
}