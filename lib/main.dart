import 'package:bookly_app_test/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/router_manager.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ColorManager.primary,
          appBarTheme: const AppBarTheme().copyWith(backgroundColor: ColorManager.primary,elevation: 0),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
    );
  }
}
