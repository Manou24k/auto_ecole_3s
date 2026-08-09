import 'package:auto_ecole_3s/constants/app_menu_list.dart';
import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/shared/app_theme_controller.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:auto_ecole_3s/widget/appBar/app_bar_drawer_icon.dart';
import 'package:auto_ecole_3s/widget/appBar/app_bar_menu.dart';
import 'package:auto_ecole_3s/widget/appBar/drawer_menu.dart';
import 'package:auto_ecole_3s/widget/language_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
          height: context.insets.appBarHeight,
          color: context.theme.appBarTheme.backgroundColor,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: Insets.maxWidth),
            child: Row(
              children: [
                AppLogo(),
                Spacer(),
                if (context.isDesktop) LargeMenus(),
                Spacer(),
                LanguageSwitch(),
                
                ThemeToggle(),
                if (!context.isDesktop) AppBarDrawerIcon(),
              ],
            ),
          ),
        ),
        if(!context.isDesktop) DrawerMenu(),
      ],
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

class LargeMenus extends StatelessWidget {
  const LargeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.getItems(context)
          .map((e) => LargeAppBarMenu(text: e.title, isSelected: true, onTap: () {}))
          .toList(),
    );
  }
}

class ThemeToggle extends ConsumerWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final state = ref.watch(appThemeControllerProvider);
    return Switch(
      value: state.value == ThemeMode.dark,
      onChanged: (value) {
        ref.read(appThemeControllerProvider.notifier).changeTheme(value ? ThemeMode.dark : ThemeMode.light);
      },
    );
  }
}

