import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(200)),
        child: Container(
          color: Colors.grey,
        )
        //Image.asset(
          //"assets/images/logo.jpg",
          //fit: BoxFit.cover,
        //),
      ),
    );
  }
}