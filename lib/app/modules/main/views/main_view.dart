import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rider_app_v2/app/config/constants.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_button.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_widget.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Obx(
        () => Row(
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
              bodyButtons: Constants.categories
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.only(
                        bottom: AppSizes.vSize2 * 0.8,
                      ),
                      child: SideMenuButton(
                        icon: e.categoryIcon,
                        onTap: () => controller.menuCategoryIndex.value = Constants.categories.indexOf(e),
                        isSelected: controller.menuCategoryIndex.value == Constants.categories.indexOf(e),
                      ),
                    ),
                  )
                  .toList(),
              footerButtons: [
                SizedBox(height: AppSizes.vSize4),
                SideMenuButton(
                  icon: Icons.language_outlined,
                  onTap: () {},
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: AppSizes.vSize2,
                  bottom: AppSizes.vSize2,
                  right: AppSizes.vSize1,
                ),
                child: controller
                    .menuCategoryViews[controller.menuCategoryIndex.value],
              ),
            )
          ],
        ),
      ),
    );
  }
}
