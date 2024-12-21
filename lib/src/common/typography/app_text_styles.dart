import 'package:flutter/material.dart';

abstract class AppTextTheme {
  static const _baseTextStyle = TextStyle(
    package: 'team_ui_kit',
    fontFamily: 'OpenSans',
    fontStyle: FontStyle.normal,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );

  static TextStyle get displayLarge => _baseTextStyle.copyWith(
        fontSize: 57,
        fontWeight: FontWeight.w300,
        height: 64 / 57,
        letterSpacing: -0.25,
      );

  static TextStyle get displayMedium => _baseTextStyle.copyWith(
        fontSize: 45,
        height: 52 / 45,
      );

  static TextStyle get displaySmall => _baseTextStyle.copyWith(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        height: 44 / 36,
      );

  static TextStyle get headlineLarge => _baseTextStyle.copyWith(
        fontSize: 32,
        height: 40 / 32,
      );

  static TextStyle get headlineMedium => _baseTextStyle.copyWith(
        fontSize: 28,
        height: 36 / 28,
      );

  static TextStyle get headlineSmall => _baseTextStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 32 / 24,
      );

  static TextStyle get titleLarge => _baseTextStyle.copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 28 / 22,
      );

  static TextStyle get titleMedium => _baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 24 / 16,
        letterSpacing: 0.15,
      );

  static TextStyle get titleSmall => _baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 20 / 14,
        letterSpacing: 0.1,
      );

  static TextStyle get bodyLarge => _baseTextStyle.copyWith(
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0.5,
      );

  static TextStyle get bodyMedium => _baseTextStyle.copyWith(
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.25,
      );

  static TextStyle get bodySmall => _baseTextStyle.copyWith(
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0.4,
      );

  static TextStyle get labelLarge => _baseTextStyle.copyWith(
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.1,
      );

  static TextStyle get labelMedium => _baseTextStyle.copyWith(
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0.5,
      );

  static TextStyle get labelSmall => _baseTextStyle.copyWith(
        fontSize: 11,
        height: 16 / 11,
        letterSpacing: 0.5,
      );
}
