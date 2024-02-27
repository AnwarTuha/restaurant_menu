import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rider_app_v2/app/config/constants.dart';
import 'package:rider_app_v2/app/modules/menu_category/views/menu_category_view.dart';

class MainController extends GetxController {
  /// CURRENTLY SELECTED MENU CATEGORY
  final RxInt menuCategoryIndex = 0.obs;

  /// MENU CATEGORY VIEWS
  final List<Widget> menuCategoryViews = [
    MenuCategoryView(menus: Constants.categories[0].menus),
    MenuCategoryView(menus: Constants.categories[1].menus),
    MenuCategoryView(menus: Constants.categories[2].menus),
    MenuCategoryView(menus: Constants.categories[3].menus),
    MenuCategoryView(menus: Constants.categories[4].menus),
  ];
}
