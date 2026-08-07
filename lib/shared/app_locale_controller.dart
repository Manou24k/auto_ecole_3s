import 'dart:async';

import 'package:auto_ecole_3s/shared/app_shared_pref.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_locale_controller.g.dart';

@riverpod
class AppLocaleController extends _$AppLocaleController {
  @override
  FutureOr<String> build() async {
    return AppSharedPref.getAppLocale();
  }

  Future<void> changeLocale(String newLocale) async {
    await AppSharedPref.setAppLocale(newLocale);
    state = AsyncData(newLocale);
  }
}