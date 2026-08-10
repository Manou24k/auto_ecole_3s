import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:auto_ecole_3s/widget/styled_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LargeHeroButtons extends StatelessWidget {
  
  const LargeHeroButtons({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryButton(title:context.texts.formations),
        Gap(Insets.lg),
        OutlineButton(title:context.texts.aproposdenous),

      ],
    );
  }
}

class SmallHeroButtons extends StatelessWidget {
  const SmallHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(title:context.texts.formations),
        ),
        Gap(Insets.lg),
        SizedBox(
          width: double.infinity,
          child: OutlineButton(title:context.texts.formations),
        )


      ],
    );
  }
}