import 'package:auto_ecole_3s/home_page.dart';
import 'package:auto_ecole_3s/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      locale: Locale('fr'),
      
      
    );
  }
}