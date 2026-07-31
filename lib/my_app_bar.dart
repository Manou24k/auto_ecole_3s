import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:auto_ecole_3s/widget/appBar/app_bar_drawer_icon.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      height: context.insets.appBarHeight,
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) AppMenus(),
            Spacer(),
            LanguageToggle(),
            
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawerIcon(),
          ],
        ),
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
