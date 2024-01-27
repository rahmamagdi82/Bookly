import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/font_manager.dart';
import '../../../../../core/utils/resources/style_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';



class BookRating extends StatelessWidget{
  const BookRating({super.key, required this.rank});
  final num rank;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.rankingStar,color: ColorManager.yellow,size: AppSize.s14,),
        const SizedBox(width: AppSize.s6,),
        Text(rank.toString(),style: FontStyles.getMediumStyle().copyWith(fontSize: FontSize.s16),),
      ],
    );
  }
}