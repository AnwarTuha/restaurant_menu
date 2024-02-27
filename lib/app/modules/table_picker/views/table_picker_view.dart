import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rider_app_v2/app/common/tile.dart';
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
      backgroundColor: AppColors.warning,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Table List',
          style: AppTypography.titleBold.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: AppSizes.fSize10,
          ),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: AlignedGridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          itemCount: controller.tables.length,
          crossAxisSpacing: 4,
          itemBuilder: (context, index) {
            return InteractiveTile(
              index: index,
              extent: 140,
            );
          },
        ),
      ),
    );
  }
}
