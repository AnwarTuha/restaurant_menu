import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rider_app_v2/app/common/controllers/cart_controller.dart';
import 'package:rider_app_v2/app/theme/app_colors.dart';
import 'package:rider_app_v2/app/theme/app_sizes.dart';
import 'package:rider_app_v2/app/theme/app_typography.dart';

class CartDialogue extends StatefulWidget {
  const CartDialogue({super.key});

  @override
  State<CartDialogue> createState() => _CartDialogueState();
}

class _CartDialogueState extends State<CartDialogue> {

  late CartController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(CartController());
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<CartController>();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(
        horizontal: AppSizes.hSize10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteOff,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.vSize1,
          horizontal: AppSizes.hSize2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add to your cart',
                  style: AppTypography.bodyCaptionBold,
                ),
                Text(
                  DateFormat('MMM dd').format(DateTime.now()),
                  style: AppTypography.bodyCaptionBold.copyWith(
                    color: AppColors.grayLight,
                    fontSize: AppSizes.fSize10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.vSize4),
            Align(
              child: Text(
                'How many orders?',
                style: AppTypography.bodyCaptionRegular.copyWith(
                  fontSize: AppSizes.fSize10 * 0.9,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: AppSizes.vSize1),
            Align(
              child: _buildHowManyOrders(),
            ),
            SizedBox(height: AppSizes.vSize4),
            Text(
              'Additional Note',
              style: AppTypography.bodyCaptionRegular.copyWith(
                fontSize: AppSizes.fSize10 * 0.9,
                fontWeight: FontWeight.w400,
                height: 0.5,
              ),
            ),
            TextFormField(
              style: AppTypography.menuRegular.copyWith(
                fontSize: AppSizes.fSize8,
                fontWeight: FontWeight.w700,
              ),
              controller: controller.noteController,
              decoration: InputDecoration(
                hintText: 'leave any notes to the chefs here...',
                hintStyle: AppTypography.menuRegular.copyWith(
                  fontSize: AppSizes.fSize8,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grayLight,
                ),
                contentPadding: const EdgeInsets.only(
                  top: 8,
                )
              ),
            ),
            SizedBox(height: AppSizes.vSize4),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.warningDark,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppSizes.vSize1 * 0.8,
                    ),
                    child: Center(
                      child: Text(
                        'Add to cart',
                        style: AppTypography.titleRegular.copyWith(
                          color: AppColors.whiteOff,
                          fontSize: AppSizes.fSize8,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: AppSizes.hSize1),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: AppSizes.vSize1 * 0.8,
                    ),
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: AppTypography.titleRegular.copyWith(
                          color: AppColors.whiteOff,
                            fontSize: AppSizes.fSize8
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _buildHowManyOrders() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _buildQuantityButton(
          icon: Icons.remove,
          onTap: () {},
        ),
        SizedBox(width: AppSizes.hSize2),
        SizedBox(
          width: AppSizes.hSize10,
          child: TextFormField(
            textAlign: TextAlign.center,
            style: AppTypography.menuRegular.copyWith(
              fontSize: AppSizes.fSize8,
              fontWeight: FontWeight.w700,
            ),
            keyboardType: TextInputType.number,
            maxLength: 1,
            controller: controller.orderQuantityController,
            onFieldSubmitted: (value) {
              if (value.isEmpty) {
                controller.orderQuantityController.text = '1';
              }
            },
            decoration: const InputDecoration(
              counterText: '',
            ),
          ),
        ),
        SizedBox(width: AppSizes.hSize2),
        _buildQuantityButton(
          icon: Icons.add,
          onTap: () {},
        ),
      ],
    );
  }

  _buildQuantityButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteOff,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.black),
        ),
        padding: const EdgeInsets.all(3),
        child: Icon(
          icon,
          color: AppColors.black,
        ),
      ),
    );
  }
}
