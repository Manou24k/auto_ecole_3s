import 'package:auto_ecole_3s/constants/app_icon.dart';
import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/provider.dart';
import 'package:auto_ecole_3s/widget/seo_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
    
class LanguageSwitch extends ConsumerWidget {

  const LanguageSwitch({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context,ref) {
    final locale = ref.watch(appLocalProvider);
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 'fr',
            child: PopuplanguageSwitchItem(language: 'Français', icon: AppIcon.fr)
          ),
          PopupMenuItem(
            value: 'en',
            child: PopuplanguageSwitchItem(language: 'English', icon: AppIcon.us)
          )
        ];
      },
      initialValue: locale.value == 'fr' ? 'fr' : 'en',
      onSelected: (String value) {
        if (value == 'fr') {
          ref.read(appLocalProvider.notifier).changeLocale('fr');
        } else {
          ref.read(appLocalProvider.notifier).changeLocale('en');
        }
      },
      child: Row(
        children: [
          Icon(
            Icons.language,
            color: context.colorScheme.onBackground,
          ),
          Gap(4),
          SEOText(
            locale.value == 'fr' ? 'Fr' : 'En',
          ),
        ],
      )
    );
  }
}
 class PopuplanguageSwitchItem extends StatelessWidget {
  const PopuplanguageSwitchItem ({
    Key? key,
    required this.language,
    required this.icon,
  });
  final String language;
  final String icon;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SvgPicture.asset(icon, width: 20, height: 20),
        Gap(10),
        SEOText(language)
      ],
    );
  }
 }
