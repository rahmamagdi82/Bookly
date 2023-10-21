import 'package:bookly_app_test/core/utils/resources/color_manager.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utils/router_manager.dart';


Future<void> main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
  
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(AppConstants.getBooksBox);
  await Hive.openBox(AppConstants.getNewestBooksBox);
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
