import 'package:get/get.dart';

import '../controllers/table_picker_controller.dart';

class TablePickerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TablePickerController>(
      () => TablePickerController(),
    );
  }
}
