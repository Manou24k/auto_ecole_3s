import 'package:auto_ecole_3s/constants/app_menu_list.dart';
import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:auto_ecole_3s/widget/appBar/app_bar_drawer_icon.dart';
import 'package:auto_ecole_3s/widget/language_switch.dart';
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
      children: AppMenuList.getItems(context).map((e)=>LargeAppBarMenu(text: e.title, isSelected: true, onTap: (){})).toList(),
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

class LargeAppBarMenu extends StatelessWidget {
  const LargeAppBarMenu({super.key, required this.text, required this.isSelected, required this.onTap});

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(
          text,
          style: context.appTextStyle.bodyLgMedium,
        ),
      ),
    );
  }
}
