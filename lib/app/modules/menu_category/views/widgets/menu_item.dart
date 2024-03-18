import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rider_app_v2/app/data/models/menu_model.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:rider_app_v2/app/theme/app_colors.dart';
import 'package:rider_app_v2/app/theme/app_sizes.dart';
import 'package:rider_app_v2/app/theme/app_typography.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.model});

  final MenuModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.FOOD_LIST),
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
              child: Image.network(
                "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                height: AppSizes.vSize16,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                model.menuTitle,
                style: AppTypography.menuBold.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: AppSizes.fSize8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
