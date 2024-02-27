import 'package:get/get.dart';
import 'package:rider_app_v2/app/common/controllers/cart_controller.dart';

import '../controllers/food_list_controller.dart';

class FoodListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodListController>(
      () => FoodListController(),
    );
  }
}
