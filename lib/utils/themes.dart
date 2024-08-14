import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      displayLarge: TextStyle(fontFamily: 'Inter', fontSize: 32, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontFamily: 'Inter', fontSize: 28, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontFamily: 'Inter', fontSize: 24, fontWeight: FontWeight.bold),
      headlineLarge: TextStyle(fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontFamily: 'Inter', fontSize: 18, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontFamily: 'Inter', fontSize: 16),
      bodyMedium: TextStyle(fontFamily: 'Inter', fontSize: 14),
      bodySmall: TextStyle(fontFamily: 'Inter', fontSize: 12),
      labelLarge: TextStyle(fontFamily: 'Inter', fontSize: 14),
      titleMedium: TextStyle(fontFamily: 'Inter', fontSize: 16),
      titleSmall: TextStyle(fontFamily: 'Inter', fontSize: 14),
    ),
    // Add other theme properties if needed
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      displayLarge: TextStyle(fontFamily: 'Inter', fontSize: 32, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontFamily: 'Inter', fontSize: 28, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontFamily: 'Inter', fontSize: 24, fontWeight: FontWeight.bold),
      headlineLarge: TextStyle(fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontFamily: 'Inter', fontSize: 18, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontFamily: 'Inter', fontSize: 16),
      bodyMedium: TextStyle(fontFamily: 'Inter', fontSize: 14),
      bodySmall: TextStyle(fontFamily: 'Inter', fontSize: 12),
      labelLarge: TextStyle(fontFamily: 'Inter', fontSize: 14),
      titleMedium: TextStyle(fontFamily: 'Inter', fontSize: 16),
      titleSmall: TextStyle(fontFamily: 'Inter', fontSize: 14),
    ),
    // Add other theme properties if needed
  );
}
