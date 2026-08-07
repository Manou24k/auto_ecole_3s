import 'package:auto_ecole_3s/style/app_color.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final String fontFamily;

  AppTheme({required this.fontFamily});

  ThemeData get dark {
    return _getThemeData(
      colorScheme: ColorScheme.dark(
        primary: AppColor.primaryColor,
        surface: AppColor.gray[850]!,
        outline: AppColor.gray[800]!,
        outlineVariant: AppColor.gray[700]!,
        onSurface: AppColor.gray[300]!,
        onSurfaceVariant: AppColor.gray[400]!,
        tertiary: AppColor.gray[900]!,
      ),
      scaffoldBackgroundColor: AppColor.darkBackgroundColor,
      elevatedButtonTextStyle: _darkElevatedButtonTextStyle,
      outlineButtonTextStyle: _darkOutlineButtonTextStyle,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.gray[900]!.withValues(alpha: 0.3),
        foregroundColor: AppColor.gray[100],
      ),
    );
  }

  ThemeData get light {
    return _getThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColor.primaryColor,
        surface: AppColor.gray[200]!,
        outline: AppColor.gray[300]!,
        outlineVariant: AppColor.gray[400]!,
        onSurface: AppColor.gray[700]!,
        onSurfaceVariant: AppColor.gray[600]!,
        tertiary: AppColor.gray[900]!,
      ),
      scaffoldBackgroundColor: AppColor.gray[100]!,
      elevatedButtonTextStyle: _lightElevatedButtonTextStyle,
      outlineButtonTextStyle: _lightOutlineButtonTextStyle,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.gray[100]!.withValues(alpha: 0.3),
        foregroundColor: AppColor.gray[800],
      ),
    );
  }

  ThemeData _getThemeData({
    required ColorScheme colorScheme,
    required Color scaffoldBackgroundColor,
    required WidgetStateProperty<TextStyle?> elevatedButtonTextStyle,
    required WidgetStateProperty<TextStyle?> outlineButtonTextStyle,
    required AppBarTheme appBarTheme,
  }) {
    return ThemeData(
      fontFamily: fontFamily,
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        titleMedium: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16,
          color: colorScheme.onSurface,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          fontSize: 14,
          color: colorScheme.onSurfaceVariant,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size.fromHeight(40)),
          backgroundColor: _primaryButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.med, vertical: 10),
          ),
          textStyle: elevatedButtonTextStyle,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size.fromHeight(40)),
          side: _outlineButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.med, vertical: 10),
          ),
          textStyle: outlineButtonTextStyle,
        ),
      ),
      appBarTheme: appBarTheme,
    );
  }

  final WidgetStateProperty<Color?> _primaryButtonStates =
      WidgetStateProperty.resolveWith<Color?>((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return AppColor.primaryColor.withValues(alpha: 0.7);
    }
    return AppColor.primaryColor;
  });

  final WidgetStateProperty<BorderSide?> _outlineButtonStates =
      WidgetStateProperty.resolveWith<BorderSide?>((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return BorderSide(color: AppColor.primaryColor.withValues(alpha: 0.7));
    }
    return const BorderSide(color: AppColor.primaryColor);
  });

  WidgetStateProperty<TextStyle?> get _darkElevatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColor.gray[100],
          fontFamily: fontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStateProperty<TextStyle?> get _lightElevatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColor.gray[900],
          fontFamily: fontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStateProperty<TextStyle?> get _darkOutlineButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColor.gray[100],
          fontFamily: fontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStateProperty<TextStyle?> get _lightOutlineButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColor.gray[800],
          fontFamily: fontFamily,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );
}