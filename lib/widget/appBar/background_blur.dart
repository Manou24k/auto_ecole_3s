import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/style/app_size.dart';
import 'package:flutter/material.dart';

class BackgroundBlur extends StatelessWidget {
  const BackgroundBlur({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -(context.width / 2/2),
      top: -(context.width / 2/2)+ Insets.xxxl,
      child: Container(
        width: context.width/2,
        height: context.width/2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: context.theme.colorScheme.primary.withOpacity(0.5),
              blurRadius: 200,
              spreadRadius: 100,
            ),
          ]
        ),
      ),

    );
  }
}