import 'package:flutter/material.dart';

class AppColors {

  /// GRAYSCALE
  static const Color black = Color(0xFF171717);
  static const Color blackLight = Color(0xFF3A3A3C);
  static const Color grayDark = Color(0xFF5D6066);
  static const Color grayDefault = Color(0xFF808489);
  static const Color grayLight = Color(0xFFBCBEC2);
  static const Color grayLighter = Color(0xFFD2D2D2);

  /// BACKGROUND
  static const Color backgroundDark = Color(0xFFE8E8E8);
  static const Color backgroundLight = Color(0xFFF6F6F6);

  /// ETC
  static const Color dim = Color(0x4D222628);
  static const Color toastMessageBackground = Color(0xCC32363A);

  /// WHITE
  static const Color whiteOff = Color(0xFFFFFFFF);
  static const Color white70 = Color(0xB3FFFFFF);
  static const Color white50 = Color(0x80FFFFFF);
  static const Color white30 = Color(0x4DFFFFFF);
  static const Color white10 = Color(0x1AFFFFFF);

  /// PRIMARY
  static const Color primary = Color(0xFFF3971A);
  static const Color primaryDark = Color(0xFFE07919);
  static const Color primaryLight = Color(0xFFFFCE8B);
  static const Color primaryLighter = Color(0xFFFFEFDA);
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFFFFA31A),
      Color(0xFFFA752B),
      Color(0xFFE12323),
    ],
  );

  /// ACCENT
  static const Color accent = Color(0xFF784CD6);
  static const Color accentDark = Color(0xFF4A1A88);
  static const Color accentLight = Color(0xFFA48EE4);
  static const Color accentLighter = Color(0xFFEBE1FF);
  static const LinearGradient accentGradient = LinearGradient(
    colors: [
      Color(0xFF784CD6),
      Color(0xFF332FE3),
    ],
  );

  /// DANGER
  static const Color danger = Color(0xFFE76565);
  static const Color dangerDark = Color(0xFFA92E2E);
  static const Color dangerLight = Color(0xFFFFEAEA);

  /// WARNING
  static const Color warning = Color(0xFFFFD02C);
  static const Color warningDark = Color(0xFFC28000);
  static const Color warningLight = Color(0xFFFFF8d0);

  /// SUCCESS
  static const Color success = Color(0xFF1FA363);
  static const Color successDark = Color(0xFF0E6A3E);
  static const Color successLight = Color(0xFFDDFBED);

}