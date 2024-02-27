import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:rider_app_v2/app/modules/food_list/views/widget/cart_dialog.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:rider_app_v2/app/theme/app_sizes.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.FOOD_DETAIL, arguments: {'INDEX': index}),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteOff,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Hero(
                tag: 'HERO_TAG_$index',
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
                    style: AppTypography.bodyCaptionRegular.copyWith(
                      fontSize: AppSizes.fSize10 * 0.9,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: AppSizes.vSize2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1400 Birr.',
                        style: AppTypography.menuBold.copyWith(
                          fontSize: AppSizes.fSize10,
                        ),
                      ),
                      _buildAddToCartButton(Icons.add, context),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildAddToCartButton(IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => const CartDialogue(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.warning,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: AppColors.grayDefault,
              offset: Offset(0, 2),
            )
          ],
        ),
        padding: const EdgeInsets.all(6),
        child: Center(
          child: Icon(
            icon,
            color: AppColors.black,
            size: AppSizes.hSize4 * 0.9,
          ),
        ),
      ),
    );
  }
}
