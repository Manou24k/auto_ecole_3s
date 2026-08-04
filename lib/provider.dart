import 'package:auto_ecole_3s/app_locale_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/locale.dart';

final appLocalProvider = AsyncNotifierProvider<AppLocaleController, String>(
  AppLocaleController.new,
);
  