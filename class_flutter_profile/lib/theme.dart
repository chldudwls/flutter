import 'package:flutter/material.dart';

const MaterialColor primaryWhite = MaterialColor(0xffffffff, <int, Color>{
  50: Color(0xFFFFFFFF), // 50% opacity
  100: Color(0xFFF9F9F9), // Lighter shade
  200: Color(0xFFF2F2F2),
  300: Color(0xFFE6E6E6),
  400: Color(0xFFD9D9D9),
  500: Color(0xCCCCCC), // Mid-light gray
  600: Color(0xB3B3B3), // Darker gray
  700: Color(0x999999), // Darker shade
  800: Color(0x808080), // Even darker shade
  900: Color(0x666666), // Very dark gray
});

ThemeData theme() {
  return ThemeData(
    primarySwatch: primaryWhite,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
