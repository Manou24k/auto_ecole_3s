import 'package:auto_ecole_3s/widget/appBar/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBarDrawerIcon extends ConsumerStatefulWidget {
  const AppBarDrawerIcon({super.key});

  @override
  ConsumerState<AppBarDrawerIcon> createState() => _AppBarDrawerIconState();
}

class _AppBarDrawerIconState extends ConsumerState<AppBarDrawerIcon> with SingleTickerProviderStateMixin{
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
          if (!isOpen) {controller.forward();
          ref.read(drawerMenuControllerProvider.notifier).open();
          }else {
            controller.reverse();
            ref.read(drawerMenuControllerProvider.notifier).close();
          }
          isOpen = !isOpen;
        
        });
      },
      icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: animation),
    );
  }
}