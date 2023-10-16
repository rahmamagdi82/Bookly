import 'package:bookly_app_test/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/pressentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: ColorManager.primary,appBarTheme: AppBarTheme().copyWith(backgroundColor: ColorManager.primary,elevation: 0)),
      home: const SplashView(),
    );
  }
}
