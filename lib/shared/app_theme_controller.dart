import 'dart:async';

import 'package:auto_ecole_3s/shared/app_shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_controller.g.dart';

@riverpod
class AppThemeController extends _$AppThemeController {
  @override
  FutureOr<ThemeMode> build() async {
    return AppSharedPref.getAppTheme();
  }

  Future<void> changeTheme(ThemeMode theme) async {
    await AppSharedPref.setAppTheme(theme == ThemeMode.light ? 'light' : 'dark');
    state = AsyncData(theme);
  }
}