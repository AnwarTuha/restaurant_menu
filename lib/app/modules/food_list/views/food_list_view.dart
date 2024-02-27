import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rider_app_v2/app/modules/food_list/views/widget/food_item.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_button.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_widget.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

import '../controllers/food_list_controller.dart';

class FoodListView extends GetView<FoodListController> {
  const FoodListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Row(
        children: [
          SideMenuWidget(
            headerButtons: [
              SideMenuButton(
                icon: Icons.arrow_back,
                onTap: () => Get.back(),
              ),
              SizedBox(height: AppSizes.vSize2 * 0.8),
              SideMenuButton(
                icon: Icons.shopping_cart_outlined,
                onTap: () => Get.toNamed(Routes.CART_VIEW),
              ),
            ],
            bodyButtons: const [],
            footerButtons: [
              SizedBox(height: AppSizes.vSize4),
              SideMenuButton(
                icon: Icons.language_outlined,
                onTap: () {},
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(
                top: AppSizes.vSize2,
                bottom: AppSizes.vSize2,
                right: AppSizes.vSize1,
              ),
              itemBuilder: (context, index) {
                return FoodItem(index: index);
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: AppSizes.vSize1);
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
