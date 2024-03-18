import 'package:get/get.dart';

import '../controllers/table_list_controller.dart';

class TableListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TableListController>(
      () => TableListController(),
    );
  }
}
