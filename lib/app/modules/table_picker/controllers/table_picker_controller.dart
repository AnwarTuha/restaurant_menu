import 'package:get/get.dart';

class TablePickerController extends GetxController {
  var tables = [].obs;

  void fetchTables() {
    tables.addAll(List<String>.generate(24, (index) => 'Table  $index'));
  }

  RxInt selectedViewIndex = 0.obs;

  void selectTile(int index) {
    selectedViewIndex.value = index;
  }

  void clearSelection() {
    selectedViewIndex.value = -1;
  }

  @override
  void onInit() {
    fetchTables();
    super.onInit();
  }
}
