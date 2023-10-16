import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resource/font_manager.dart';
import '../resource/style_manager.dart';
import 'values_Manager.dart';
import 'color_manager.dart';

class AppTheme {
  static ThemeData light = ThemeData(
        //background color
        backgroundColor: ColorManager.white,

        // progress indicator color
        progressIndicatorTheme:
        ProgressIndicatorThemeData(color: ColorManager.primary),

        // scaffold color
        scaffoldBackgroundColor: ColorManager.white,

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorManager.white,
          selectedItemColor: ColorManager.primary,
          unselectedItemColor: ColorManager.darkGray,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          showUnselectedLabels: true,
          elevation: AppSize.s0,
        ),

        // main colors
        primaryColor: ColorManager.primary,

        secondaryHeaderColor: ColorManager.darkGray,

        //appBar theme
        appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark ,statusBarColor: ColorManager.white),
            centerTitle: false,
            color: ColorManager.white,
            elevation: AppSize.s0,
            titleTextStyle: getSemiBoldStyle(
              fontSize: FontSize.s18,
              color: ColorManager.primary,
            ),
            iconTheme: IconThemeData(
              size: AppSize.s25,
              color: ColorManager.primary,
            )),

        //text theme
        textTheme: TextTheme(
          displaySmall: getBoldStyle(
              color: ColorManager.primary, fontSize: FontSize.s14),
          headlineMedium: getSemiBoldStyle(
              color: ColorManager.primary, fontSize: FontSize.s14),
          titleMedium: getMediumStyle(
              color: ColorManager.primary, fontSize: FontSize.s16),
          labelLarge: getRegularStyle(color: ColorManager.primary),
        ),

        // text button style
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                foregroundColor:
                    MaterialStatePropertyAll(ColorManager.primary))),

        // icon theme
        iconTheme: IconThemeData(color: ColorManager.primary, size: AppSize.s25),

      );
}


