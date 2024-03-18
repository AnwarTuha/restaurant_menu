import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_button.dart';
import 'package:rider_app_v2/app/modules/main/views/widgets/side_menu_widget.dart';
import 'package:rider_app_v2/app/modules/table_list/views/widgets/table_item.dart';
import 'package:rider_app_v2/app/theme/app_sizes.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

import '../controllers/table_list_controller.dart';

class TableListView extends GetView<TableListController> {
  const TableListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLight,
      body: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideMenuWidget(
            headerButtons: [
              SideMenuButton(
                icon: Icons.shopping_cart_outlined,
                onTap: () {},
              ),
            ],
            bodyButtons: const [],
            footerButtons: [
              SizedBox(height: AppSizes.vSize4),
              SideMenuButton(
                icon: Icons.logout_outlined,
                onTap: () {},
              ),
              SizedBox(height: AppSizes.vSize2 * 0.8),
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
                      'Tables',
                      style: AppTypography.titleBold.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: AppSizes.fSize10,
                      ),
                    ),
                    Container(
                      color: AppColors.blackLight,
                      height: 1,
                      margin: EdgeInsets.symmetric(
                        vertical: AppSizes.vSize1,
                      ),
                      width: double.infinity,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.hSize4,
                        ),
                        child: DynamicHeightGridView(
                          shrinkWrap: true,
                          itemCount: 50,
                          crossAxisCount: 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          builder: (context, index) => TableItem(tableNumber: index + 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
