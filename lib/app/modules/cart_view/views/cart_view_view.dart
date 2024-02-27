import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rider_app_v2/app/modules/cart_view/views/widgets/cart_item.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_button.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_widget.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

import '../controllers/cart_view_controller.dart';

class CartViewView extends GetView<CartViewController> {
  const CartViewView({Key? key}) : super(key: key);
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
            ],
            bodyButtons: const [],
            footerButtons: [
              SizedBox(height: AppSizes.vSize4),
              SideMenuButton(
                icon: Icons.close,
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.whiteOff,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.only(
                        top: AppSizes.vSize2,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Orders',
                            style: AppTypography.titleBold.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: AppSizes.fSize10,
                            ),
                          ),
                          SizedBox(height: AppSizes.vSize1),
                          Container(
                            color: AppColors.blackLight,
                            height: 1,
                            width: double.infinity,
                          ),
                          Expanded(
                            child: ListView.separated(
                              separatorBuilder: (context, index) => SizedBox(height: AppSizes.vSize2),
                              itemBuilder: (context, index) => CartItem(),
                              itemCount: 1,
                              padding: EdgeInsets.symmetric(
                                vertical: AppSizes.vSize2,
                                horizontal: AppSizes.hSize2,
                              ),
                              shrinkWrap: true,
                            ),
                          ),
                        ],
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
