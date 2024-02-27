import 'package:get/get.dart';

import '../modules/cart_view/bindings/cart_view_binding.dart';
import '../modules/cart_view/views/cart_view_view.dart';
import '../modules/food_detail/bindings/food_detail_binding.dart';
import '../modules/food_detail/views/food_detail_view.dart';
import '../modules/food_list/bindings/food_list_binding.dart';
import '../modules/food_list/views/food_list_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/menu_category/bindings/menu_category_binding.dart';
import '../modules/menu_category/views/menu_category_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      transition: Transition.downToUp,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      transition: Transition.noTransition,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.MENU_CATEGORY,
      page: () => const MenuCategoryView(menus: []),
      binding: MenuCategoryBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_LIST,
      transition: Transition.noTransition,
      page: () => const FoodListView(),
      binding: FoodListBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_DETAIL,
      transition: Transition.noTransition,
      page: () => const FoodDetailView(),
      binding: FoodDetailBinding(),
    ),
    GetPage(
      name: _Paths.CART_VIEW,
      transition: Transition.noTransition,
      page: () => const CartViewView(),
      binding: CartViewBinding(),
    ),
  ];
}
