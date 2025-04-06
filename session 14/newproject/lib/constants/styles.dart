import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle h1 = TextStyle(
    fontSize: 24,
    height: 28 / 24,
    letterSpacing: 0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 18,
    height: 21 / 18,
    letterSpacing: 0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 16,
    height: 19 / 16,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 12,
    height: 14 / 12,
    letterSpacing: 0,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
}

class AppColors {
  static const Color primary = Color(0xFF2B0063);
  static const Color secondary = Color(0xFF8E84FF);
  static const Color accent = Color(0xFFB8B2FF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color deepPurple = Color(0xFF2B0063); // Duplicate of primary
  static const Color vibrantPurple = Color(0xFFA838FF);
  static const Color darkBlue = Color(0xFF060B26);
  static const Color softPurple = Color(0xFFB8B2FF); // Duplicate of accent
  static const Color fadedPurple30 = Color(0x4DB8B2FF); // 30% opacity
  static const Color darkGrey = Color(0xFF1A1F37);
  static const Color lightLavender = Color(0xFFC6C2F8);
}
