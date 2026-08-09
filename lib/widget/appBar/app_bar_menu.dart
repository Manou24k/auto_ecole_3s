import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:flutter/material.dart';

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
