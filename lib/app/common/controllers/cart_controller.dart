import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  /// TEXT EDITING CONTROLLERS
  final TextEditingController orderQuantityController = TextEditingController(text: "1");
  final TextEditingController noteController = TextEditingController();

  @override
  void dispose() {
    orderQuantityController.dispose();
    super.dispose();
  }
}