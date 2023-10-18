import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/values_Manager.dart';

class CustomSearchTextField extends StatelessWidget{
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorManager.white,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        suffixIconColor: ColorManager.white,
        suffixIcon: IconButton(
          icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
          onPressed: () {  },
        ),
        hintText: 'Search',
        border: border,
        focusedBorder: border,
      ),
    );
  }
}

InputBorder border = OutlineInputBorder(
    borderSide: BorderSide(color: ColorManager.white),
    borderRadius: BorderRadius.circular(AppSize.s15)
);