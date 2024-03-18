import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rider_app_v2/app/common/tile.dart';
import 'package:rider_app_v2/app/config/constants.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_button.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_widget.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:rider_app_v2/app/theme/app_colors.dart';
import 'package:rider_app_v2/app/theme/app_sizes.dart';
import 'package:rider_app_v2/app/theme/app_typography.dart';

import '../controllers/table_picker_controller.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TablePickerView extends GetView<TablePickerController> {
  const TablePickerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      // appBar: AppBar(
      //   title: Center(
      //       child: Text(
      //     'Table List',
      //     style: AppTypography.titleBold.copyWith(
      //       fontWeight: FontWeight.w500,
      //       fontSize: AppSizes.fSize10,
      //     ),
      //   )),
      // ),
      body: Row(
        children: [
          SideMenuWidget(
            headerButtons: [
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
              child: AlignedGridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                itemCount: controller.tables.length,
                itemBuilder: (context, index) {
                  return InteractiveTile(
                    index: index,
                    extent: 140,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
