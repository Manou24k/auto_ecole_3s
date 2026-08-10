import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:auto_ecole_3s/widget/seo_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class HeroTexts extends StatelessWidget {
  const HeroTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.isDesktopOrTablet? CrossAxisAlignment.start :CrossAxisAlignment.center,
      children: [
        SEOText(
          context.texts.name,
          textAlign: context.isDesktopOrTablet ? TextAlign.left: TextAlign.center,
          style: context.appTextStyle.titleLgBold.copyWith(
            color: context.colorScheme.onBackground,
          ),
          textRendererStyle: TextRendererStyle.header1,

        ),
        Gap(Insets.sm),
        SEOText(
          context.texts.blabla,
          textAlign: context.isDesktopOrTablet ? TextAlign.left: TextAlign.center,
          style: context.appTextStyle.titleMdMedium.copyWith(
            color: context.colorScheme.onBackground,
          ),
          textRendererStyle: TextRendererStyle.header2,
        ),
        Gap(Insets.lg),
        SEOText(
          context.texts.description,
          textAlign: context.isDesktopOrTablet ? TextAlign.left: TextAlign.center,
          style: context.appTextStyle.titleMdMedium.copyWith(
            color: context.colorScheme.onSurface            
          ),
          textRendererStyle: TextRendererStyle.header3,
        )
      ],
    );
  }
}