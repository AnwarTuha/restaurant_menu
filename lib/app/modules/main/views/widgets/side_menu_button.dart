import 'package:flutter/material.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

class SideMenuButton extends StatelessWidget {
  const SideMenuButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.isSelected = false,
  });

  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.black : AppColors.whiteOff,
          shape: BoxShape.circle,
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
            color: isSelected ? AppColors.whiteOff : AppColors.black,
            size: AppSizes.hSize4 * 0.9,
          ),
        ),
      ),
    );
  }
}
