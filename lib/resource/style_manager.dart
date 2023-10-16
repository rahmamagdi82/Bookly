import 'package:flutter/material.dart';

import 'font_manager.dart';

class FontStyles{

// regular style

  static TextStyle getRegularStyle({
    double fontSize=FontSize.s14,
    required Color color,
  }){
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      color: color,
    );
  }

// medium style

  static TextStyle getMediumStyle({
    double fontSize=FontSize.s14,
    required Color color,
  }){
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      color: color,
    );
  }

// light style

  static TextStyle getLightStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      fontWeight: FontWeightManager.light,
      color: color,
    );
  }

// bold style

  static TextStyle getBoldStyle(
      {double fontSize = FontSize.s12, required Color color}) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      color: color,
    );
  }

// semiBold style

  static TextStyle getSemiBoldStyle(
      {double fontSize = FontSize.s18, required Color color}) {
    return TextStyle(
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      color: color,
    );
  }
}