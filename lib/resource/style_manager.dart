import 'package:flutter/material.dart';

import 'font_manager.dart';

class FontStyles{

// regular style

  static TextStyle getRegularStyle({
    double fontSize=FontSize.s14,
    Color? color,
  }){
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color,
    );
  }

// medium style

  static TextStyle getMediumStyle({
    double fontSize=FontSize.s14,
    Color? color,
  }){
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color,
    );
  }

// bold style

  static TextStyle getBoldStyle(
      {double fontSize = FontSize.s16, Color? color}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: color,
    );
  }

// semiBold style

  static TextStyle getSemiBoldStyle(
      {double fontSize = FontSize.s18, Color? color}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color,
    );
  }
}