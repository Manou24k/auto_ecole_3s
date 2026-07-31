import 'package:flutter/material.dart';

abstract class AppTextStyle {
  const AppTextStyle();

  static const AppTextStyle mobile = _MobileTextStyle();
  static const AppTextStyle tablet = _TabletTextStyle();
  static const AppTextStyle desktop = _DesktopTextStyle();

  TextStyle get titleSmBold;
  TextStyle get bodyMdMedium;
  TextStyle get titleLgBold;
  TextStyle get titleMdMedium;
  TextStyle get bodyLgBold;
  TextStyle get bodyLgMedium;
}

class _MobileTextStyle extends AppTextStyle {
  const _MobileTextStyle();

  @override
  TextStyle get titleSmBold => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get bodyMdMedium => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get titleLgBold => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get titleMdMedium => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodyLgBold => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get bodyLgMedium => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
}

class _TabletTextStyle extends AppTextStyle {
  const _TabletTextStyle();

  @override
  TextStyle get titleSmBold => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get bodyMdMedium => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get titleLgBold => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get titleMdMedium => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodyLgBold => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get bodyLgMedium => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
}

class _DesktopTextStyle extends AppTextStyle {
  const _DesktopTextStyle();

  @override
  TextStyle get titleSmBold => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get bodyMdMedium => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get titleLgBold => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get titleMdMedium => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get bodyLgBold => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get bodyLgMedium => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );
}
