import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rider_app_v2/app/modules/table_picker/controllers/table_picker_controller.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:rider_app_v2/app/theme/app_colors.dart';

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? AppColors.primary,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}

class InteractiveTile extends StatefulWidget {
  const InteractiveTile({
    Key? key,
    required this.index,
    this.extent,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;

  @override
  _InteractiveTileState createState() => _InteractiveTileState();
}

class _InteractiveTileState extends State<InteractiveTile> {
  final TablePickerController selectionController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectionController.selectTile(widget.index);
        setState(() {}); // Trigger a rebuild to update the UI
        Get.toNamed(Routes.MAIN);
      },
      child: Obx(() => Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selectionController.selectedViewIndex.value == widget.index
                  ? AppColors.warningDark
                  : AppColors.black,
            ),
            child: Tile(
              index: widget.index,
              extent: widget.extent,
              backgroundColor:
                  Colors.transparent, // Ensure the background is transparent
              bottomSpace: widget.bottomSpace,
            ),
          )),
    );
  }
}
