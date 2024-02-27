import 'package:flutter/material.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_button.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({super.key, required this.headerButtons, required this.bodyButtons, required this.footerButtons,});

  final List<Widget> headerButtons;
  final List<Widget> bodyButtons;
  final List<Widget> footerButtons;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.warning,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25)
        ),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.hSize1,
        vertical: AppSizes.vSize1,
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.vSize2,
        horizontal: AppSizes.hSize2 * 0.8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: headerButtons,
          ),
          Column(
            children: bodyButtons,
          ),
          Column(
            children: footerButtons,
          ),
        ],
      ),
    );
  }
}
