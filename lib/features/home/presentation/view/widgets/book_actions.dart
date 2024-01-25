import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/font_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../../core/widgets/custom_button.dart';



class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
              text: '19.99€',
              fontSize: FontSize.s18,
              fontColor: ColorManager.black,
              backgroundColor: ColorManager.white,
              borderRadiusGeometry: const BorderRadius.only(
                  topLeft: Radius.circular(AppSize.s15),
                  bottomLeft: Radius.circular(AppSize.s15)),
            )),
        Expanded(
            child: CustomButton(
                text: 'Free preview',
                fontColor: ColorManager.white,
                backgroundColor: ColorManager.pink,
                borderRadiusGeometry: const BorderRadius.only(topRight: Radius.circular(AppSize.s15),bottomRight: Radius.circular(AppSize.s15))
            ))
      ],
    );
  }
}
