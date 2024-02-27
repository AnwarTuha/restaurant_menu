import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rider_app_v2/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

void main() {
  /// ENSURE FLUTTER IS PROPERLY INITIALIZED
  WidgetsFlutterBinding.ensureInitialized();

  /// FORCE FULL SCREEN MODE
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        title: 'Restaurant Menu',
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        builder: (context, child) {

          final MediaQueryData data = MediaQuery.of(context);
          return MediaQuery(
            data: data.copyWith(textScaler: const TextScaler.linear(0.8)),
            child: child!,
          );
        },
      ),
    ),
  );
}
