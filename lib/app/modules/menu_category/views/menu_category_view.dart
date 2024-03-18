import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rider_app_v2/app/data/models/menu_category.dart';
import 'package:rider_app_v2/app/data/models/menu_model.dart';
import 'package:rider_app_v2/app/modules/menu_category/views/widgets/menu_item.dart';
import 'package:rider_app_v2/app/theme/app_colors.dart';
import 'package:rider_app_v2/app/theme/app_sizes.dart';

import '../controllers/menu_category_controller.dart';

class MenuCategoryView extends StatelessWidget {
  const MenuCategoryView({Key? key, required this.menus}) : super(key: key);

  final List<MenuModel> menus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DynamicHeightGridView(
        shrinkWrap: true,
        itemCount: menus.length,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        builder: (context, index) => MenuItem(
          model: menus[index],
        ),
      ),
    );
  }
}
