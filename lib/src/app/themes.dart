import 'package:e_commerce/src/core/utils/palette.dart';
import 'package:flutter/material.dart';

// Define your custom styles
TextStyle titleLarge = const TextStyle(
  color: Palette.black,
  fontSize: 14,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w500,
);
TextStyle displayLarge = const TextStyle(
  color: Palette.black,
  fontSize: 24,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w700,
  letterSpacing: -0.44,
);
TextStyle displayMedium = const TextStyle(
  color: Palette.black,
  fontSize: 16,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w700,
);
TextStyle bodyLarge = const TextStyle(
  color: Palette.black,
  fontSize: 16,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w600,
);
TextStyle bodyMedium = const TextStyle(
  color: Palette.black,
  fontSize: 12,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w500,
);
TextStyle bodySmall = const TextStyle(
  color: Palette.black,
  fontSize: 10,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w700,
);
// Define your base theme data
ThemeData buildTheme({
  required bool isDarkMode,
  required String fontFamily,
}) {
  final baseTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  return baseTheme.copyWith(
    // ignore: deprecated_member_use
    scaffoldBackgroundColor: Palette.white,

    primaryColor: Colors.deepPurple,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      titleLarge: titleLarge,
      bodyLarge: bodyLarge,
      bodySmall: bodySmall,
      bodyMedium: bodyMedium,
    ).apply(fontFamily: fontFamily),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}

// Create your themes
final lightTheme = buildTheme(
  isDarkMode: false,
  fontFamily: 'Inter',
);
final darkTheme = buildTheme(isDarkMode: true, fontFamily: 'Inter');
