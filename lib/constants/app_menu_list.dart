import 'package:auto_ecole_3s/extensions.dart';
import 'package:auto_ecole_3s/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context){
    return [
      AppMenu(title: context.texts.acceuil, path: Routes.acceuil),
      AppMenu(title: context.texts.formations, path: Routes.formations),
      AppMenu(title: context.texts.aproposdenous, path: Routes.aproposdenous)
    ];
  }
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({required this.title, required this.path});
}