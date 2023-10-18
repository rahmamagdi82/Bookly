import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/font_manager.dart';
import '../../../../core/utils/style_manager.dart';
import '../../../../core/utils/values_Manager.dart';
class BookRating extends StatelessWidget{
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar,color: ColorManager.yellow,size: AppSize.s14,),
        const SizedBox(width: AppSize.s6,),
        Text('4.8',style: FontStyles.getMediumStyle().copyWith(fontSize: FontSize.s16),),
        const SizedBox(width: AppSize.s6,),
        Text('(1234)',style: FontStyles.getRegularStyle().copyWith(color: ColorManager.whiteWithOpacity50),)
      ],
    );
  }
}