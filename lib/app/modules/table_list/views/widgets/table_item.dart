import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

class TableItem extends StatelessWidget {
  const TableItem({super.key, required this.tableNumber});

  final int tableNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.MAIN),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteOff,
          borderRadius: BorderRadius.circular(12),
          //shape: BoxShape.circle,
          border: Border.all(color: AppColors.warning, width: 10),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(AppSizes.hSize4),
            child: Text('$tableNumber', style: AppTypography.menuRegular.copyWith(
            fontSize: AppSizes.fSize18,
              fontWeight: FontWeight.w600,
            ),),
          ),
        ),
      ),
    );
  }
}
