import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:rider_app_v2/app/modules/food_list/views/widget/cart_dialog.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_button.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_widget.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

import '../controllers/food_detail_controller.dart';

class FoodDetailView extends GetView<FoodDetailController> {
  const FoodDetailView({Key? key}) : super(key: key);
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
            child: Padding(
              padding: EdgeInsets.only(
                top: AppSizes.vSize2,
                bottom: AppSizes.vSize2,
                right: AppSizes.vSize1,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteOff,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Hero(
                              tag: "HERO_TAG_${Get.arguments['INDEX']}",
                              child: Image.network(
                                "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                height: AppSizes.vSize32,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: AppSizes.vSize1),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MENU CATEGORY',
                                  style: AppTypography.menuRegular.copyWith(
                                    fontSize: AppSizes.fSize8 * 0.9,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Spicy Thai Basil Stir-Fry',
                                  style: AppTypography.bodySmallBold.copyWith(
                                    fontSize: AppSizes.fSize10,
                                  ),
                                ),
                                SizedBox(height: AppSizes.vSize1),
                                Text(
                                  'Spicy Thai Basil Stir-Fry is a vibrant and aromatic dish originating from Thai cuisine. It is a popular street food known for its bold flavors and quick preparation.\nIngredients - Chicken or tofu, Thai Basil, Chillies, Garlic and ginger, vegetables, sauce',
                                  style:
                                      AppTypography.bodyCaptionRegular.copyWith(
                                    fontSize: AppSizes.fSize10 * 0.9,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizes.vSize1),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const CartDialogue(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.whiteOff,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.warningDark,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppSizes.vSize1,
                        ),
                        child: Center(
                          child: Text(
                            'Add to order',
                            style: AppTypography.titleRegular.copyWith(
                              color: AppColors.whiteOff,
                              fontSize: AppSizes.fSize8,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
