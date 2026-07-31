import 'package:auto_ecole_3s/style/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColor.primaryColor,
      background: AppColor.darkBackgroundColor,
      onBackground: AppColor.gray[100]

    ),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.darkBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.gray[900],

    ),
  );
}