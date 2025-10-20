import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF246BFD);
  static const Color surfaceColor = Color(0xFFF7F8FA);
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF475569);

  static ThemeData light({TextTheme? textTheme}) {
    final base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: surfaceColor,
      textTheme: (textTheme ?? base.textTheme).copyWith(
        titleLarge: (textTheme ?? base.textTheme).titleLarge?.copyWith(
          color: textPrimary,
        ),
        bodyMedium: (textTheme ?? base.textTheme).bodyMedium?.copyWith(
          color: textSecondary,
        ),
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(borderSide: BorderSide.none),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: textSecondary,
        type: BottomNavigationBarType.fixed,
      ),
      chipTheme: base.chipTheme.copyWith(
        color: MaterialStateProperty.all<Color>(Colors.white),
        side: const BorderSide(color: Color(0xFFE2E8F0)),
        labelPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      ),
    );
  }
}


