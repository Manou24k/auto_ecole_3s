import 'package:auto_ecole_3s/shared/app_locale_controller.dart';
import 'package:auto_ecole_3s/features/home/presentation/home_page.dart';
import 'package:auto_ecole_3s/l10n/app_localizations.dart';
import 'package:auto_ecole_3s/shared/app_theme_controller.dart';
import 'package:auto_ecole_3s/style/app_theme.dart';


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context,ref) {
    final locale = ref.watch(appLocaleControllerProvider);
    final theme = ref.watch(appThemeControllerProvider);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en',), 
        const Locale('fr',), 
      ],
      home: const HomePage(),
      darkTheme: AppTheme(fontFamily: 'Poppins').dark,
      theme: AppTheme(fontFamily: 'Poppins').light,
      themeMode: theme.value,
      locale: Locale(locale.value??'fr',),
      
      
    );
  }
}