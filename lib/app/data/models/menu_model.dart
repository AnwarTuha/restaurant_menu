import 'package:flutter/material.dart';
import 'package:rider_app_v2/app/data/models/food_model.dart';

class MenuModel {
  final String menuTitle;
  final String menuImage;
  final List<FoodModel> foods;

  const MenuModel({
    required this.menuTitle,
    required this.menuImage,
    required this.foods,
  });
}
