import 'package:auto_ecole_3s/features/home/presentation/hero_image.dart';
import 'package:auto_ecole_3s/features/home/presentation/hero_widget.dart';
import 'package:auto_ecole_3s/my_app_bar.dart';
import 'package:auto_ecole_3s/widget/appBar/background_blur.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          BackgroundBlur(),
          HeroWidget(),
          MyAppBar(),
        ],
      ),
    );
  }
}