import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/font_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../domain/entities/buy_link_entity.dart';



class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.buyLinks});
  final List<BuyLinkEntity> buyLinks;

  @override
  Widget build(BuildContext context) {

    // return ListView.separated(
    //   physics: const NeverScrollableScrollPhysics(),
    //     shrinkWrap: true,
    //     itemBuilder: (context,index)=> CustomButton(
    //   text: buyLinks[index].name,
    //   fontColor: ColorManager.white,
    //   backgroundColor: ColorManager.pink, onPressed: () {  },
    // ), separatorBuilder: (context,index)=>const SizedBox(height: AppSize.s20,), itemCount: buyLinks.length);
    return Column(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: buyLinks.map((e) =>
          Padding(
            padding: const EdgeInsets.only(bottom: AppPadding.p20),
            child: CustomButton(
                text: e.name,
                fontColor: ColorManager.white,
                backgroundColor: ColorManager.pink, onPressed: () {  },
              ),
          )


      ).toList(),
    );
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
                  bottomLeft: Radius.circular(AppSize.s15)), onPressed: () {  },
            )),
        Expanded(
            child: CustomButton(
                text: 'Free preview',
                fontColor: ColorManager.white,
                backgroundColor: ColorManager.pink,
                borderRadiusGeometry: const BorderRadius.only(topRight: Radius.circular(AppSize.s15),bottomRight: Radius.circular(AppSize.s15)), onPressed: () {  },
            ))
      ],
    );
  }
}
