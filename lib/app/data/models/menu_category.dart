import 'package:flutter/material.dart';
import 'package:rider_app_v2/app/data/models/menu_model.dart';

class MenuCategory {
  final IconData categoryIcon;
  final List<MenuModel> menus;

  const MenuCategory({
    required this.categoryIcon,
    required this.menus,
  });
}
