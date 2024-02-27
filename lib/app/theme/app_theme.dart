import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rider_app_v2/app/theme/theme.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: FontFamily.jost,
    useMaterial3: false,
    primaryColor: AppColors.primary,
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: AppColors.accent,
      cursorColor: AppColors.primary,
      selectionColor: AppColors.accentLighter,
    ),
  );

  static SystemUiOverlayStyle defaultAnnotatedRegion = const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  );
}