import 'dart:async';

import 'package:auto_ecole_3s/shared/app_shared_pref.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class  AppLocaleController extends AsyncNotifier<String>{
  @override
FutureOr<String> build() async {
  return await AppSharedPref.getAppLocale();
}

  void changeLocale(String newLocale) async{
    await AppSharedPref.setAppLocale(newLocale);
  update((state) => newLocale);
  }
}