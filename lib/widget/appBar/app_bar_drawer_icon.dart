import 'package:flutter/material.dart';

class AppBarDrawerIcon extends StatefulWidget {
  const AppBarDrawerIcon({super.key});

  @override
  State<AppBarDrawerIcon> createState() => _AppBarDrawerIconState();
}

class _AppBarDrawerIconState extends State<AppBarDrawerIcon> with SingleTickerProviderStateMixin{
  @override

  late AnimationController controller;
  late Animation<double> animation;

  bool isOpen = false;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    super.initState();
  }

  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (!isOpen) controller.forward();
          else {
            controller.reverse();
          }
          isOpen = !isOpen;
        });
      },
      icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: animation),
    );
  }
}