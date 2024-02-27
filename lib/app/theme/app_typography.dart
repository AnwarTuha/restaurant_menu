import 'package:flutter/material.dart';
import 'package:rider_app_v2/app/theme/theme.dart';
import 'package:sizer/sizer.dart';



class AppTypography {

  /// TITLE
  static final TextStyle displayFourRegular= TextStyle(
    fontSize: 62.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle displayThreeBold = TextStyle(
    fontSize: AppSizes.fSize32,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle displayThreeRegular = TextStyle(
    fontSize: AppSizes.fSize32,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle displayTwoBold = TextStyle(
    fontSize: AppSizes.fSize28,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle displayTwoRegular = TextStyle(
    fontSize: AppSizes.fSize28,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle displayOneBold = TextStyle(
    fontSize: AppSizes.fSize24,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle displayOneRegular = TextStyle(
    fontSize: AppSizes.fSize24,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle headlineBold = TextStyle(
    fontSize: AppSizes.fSize20,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle headlineRegular = TextStyle(
    fontSize: AppSizes.fSize20,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle titleBold = TextStyle(
    fontSize: AppSizes.fSize18,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle titleRegular = TextStyle(
    fontSize: AppSizes.fSize18,
    fontWeight: FontWeight.w400,
  );

  /// BODY
  static final TextStyle bodyLargeBold = TextStyle(
    fontSize: AppSizes.fSize16,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle bodyLargeRegular = TextStyle(
    fontSize: AppSizes.fSize16,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle bodyLargeUnderlineBold = TextStyle(
    fontSize: AppSizes.fSize16,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.underline,
  );

  static final TextStyle bodySmallBold = TextStyle(
    fontSize: AppSizes.fSize14,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle bodySmallRegular = TextStyle(
    fontSize: AppSizes.fSize14,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle bodySmallUnderlineRegular = TextStyle(
    fontSize: AppSizes.fSize14,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
  );

  static final TextStyle bodySmallUnderlineBold = TextStyle(
    fontSize: AppSizes.fSize14,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.underline,
  );

  static final TextStyle bodyCaptionBold = TextStyle(
    fontSize: AppSizes.fSize12,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle bodyCaptionRegular = TextStyle(
    fontSize: AppSizes.fSize12,
    fontWeight: FontWeight.w400,
  );

  /// MENU
  static final TextStyle menuBold = TextStyle(
    fontSize: AppSizes.fSize10,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle menuRegular = TextStyle(
    fontSize: AppSizes.fSize10,
    fontWeight: FontWeight.w400,
  );
}