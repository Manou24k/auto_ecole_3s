import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/style/app_color.dart';
import 'package:auto_ecole_3s/widget/seo_text.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  const PrimaryButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
      },
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColor.gray[100],
        ),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final String title;
  const OutlineButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        
      },
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: context.colorScheme.onBackground,
        ),
      ),
    );
  }
}