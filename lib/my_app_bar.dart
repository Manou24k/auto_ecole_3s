import 'package:auto_ecole_3s/extensions.dart';
import 'package:flutter/material.dart';
import 'package:auto_ecole_3s/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Row(
        children: [
          AppLogo(),
          Spacer(),
          AppMenus(),
          Spacer(),
          LanguageToggle(),
          
          ThemeToggle(),
        ],
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Text(
      "Auto École 3S",
      style: context.appTextStyle.titleLgBold,
    );
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(context.texts.acceuil),
        Text(context.texts.formations),
        Text(context.texts.aproposdenous),
      ],
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 'fr',
            child: Text('Français'),
          ),
          PopupMenuItem(
            value: 'en',
            child: Text('English'),
          )
        ];
      },
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: false,
      onChanged: (value) {
        
      },
    );
  }
}
