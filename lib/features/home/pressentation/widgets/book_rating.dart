import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../resource/color_manager.dart';
import '../../../../resource/font_manager.dart';
import '../../../../resource/style_manager.dart';
import '../../../../resource/values_Manager.dart';
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