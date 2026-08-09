import 'package:auto_ecole_3s/constants/app_menu_list.dart';
import 'package:auto_ecole_3s/widget/appBar/app_bar_menu.dart';
import 'package:auto_ecole_3s/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'drawer_menu.g.dart';

class DrawerMenu extends ConsumerStatefulWidget {
  const DrawerMenu({super.key});

  @override
  ConsumerState<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends ConsumerState<DrawerMenu> with SingleTickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  late final _animation = Tween<Offset>(
    begin: const Offset(0, -1),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<bool>(drawerMenuControllerProvider, (previous, next) {
      if (next) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });

    return ClipRRect(
      child: SlideTransition(
        
        position: _animation,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            boxShadow: [BoxShadow(
              color: context.colorScheme.surface.withValues(alpha: 0.4),
              blurRadius: 6,
              spreadRadius: 3,
            ),],
          ),
          child: SmallMenus(),
        ),
      ),
    );
  }
}

class SmallMenus extends StatelessWidget {
  const SmallMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: AppMenuList.getItems(context)
          .map((e) => LargeAppBarMenu(
                text: e.title,
                isSelected: true,
                onTap: () {},
              ))
          .toList(),
    );
  }
}

@riverpod
class DrawerMenuController extends _$DrawerMenuController {
  @override
  bool build() {
    return false;
  }

  void open() {
    state = true;
  }

  void close() {
    state = false;
  }
}