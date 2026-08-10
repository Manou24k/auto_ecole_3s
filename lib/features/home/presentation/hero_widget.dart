import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/features/home/presentation/hero_buttons.dart';
import 'package:auto_ecole_3s/features/home/presentation/hero_image.dart';
import 'package:auto_ecole_3s/features/home/presentation/hero_text.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        context.isDesktop || context.isTablet? _LargeHero() : _SmallHero(),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(constraints: BoxConstraints(
          maxWidth: 140,
        ),
        child: HeroImage(),
       ),
       Gap(Insets.xl),
       HeroTexts(),
       Gap(Insets.xxxl),
       SmallHeroButtons(),
      ],
    );
  }
}

class _LargeHero extends StatelessWidget {
  const _LargeHero();

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: HeroImage()
           ),
          Gap(Insets.xxxl),
          Expanded(
            flex: 2,
            child: Column(
            children: [
              HeroTexts(),
              Gap(Insets.xxl),
              LargeHeroButtons()
            ],
          ))
        ],
      );
    ;    
  }
}