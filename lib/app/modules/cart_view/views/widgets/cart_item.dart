import 'package:flutter/material.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteOff,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha(35),
            offset: const Offset(0, 18),
            blurRadius: 40,
            spreadRadius: -22,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.vSize1,
        horizontal: AppSizes.hSize1,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: AppSizes.vSize16,
              width: AppSizes.vSize16,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: AppSizes.hSize2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'MENU CATEGORY',
                style: AppTypography.menuRegular.copyWith(
                  fontSize: AppSizes.fSize8 * 0.9,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Spicy Thai Basil Stir-Fry',
                style: AppTypography.bodySmallBold.copyWith(
                  fontSize: AppSizes.fSize10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
