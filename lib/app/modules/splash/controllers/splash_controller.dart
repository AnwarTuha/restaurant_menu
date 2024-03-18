import 'package:get/get.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final String page = '[SPLASH]';

  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 1),
      () => Get.offAndToNamed(Routes.TABLE_LIST),
    );
    super.onInit();
  }
}
