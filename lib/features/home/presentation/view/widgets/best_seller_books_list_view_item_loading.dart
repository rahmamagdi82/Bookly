import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../../core/widgets/custom_fading_widget.dart';

class BestSellerBooksListViewItemLoading extends StatelessWidget {
  const BestSellerBooksListViewItemLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: SizedBox(
          height: AppSize.s115,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2/3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.s14),
                      color:ColorManager.gray
                  ),
                ),
              ),
              const SizedBox(width: AppSize.s30,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.9,
                      height: AppSize.s6,
                      color: ColorManager.gray,
                    ),
                    const SizedBox(height: AppSize.s16,),
                    Container(
                      width: AppSize.s65,
                      height: AppSize.s6,
                      color: ColorManager.gray,
                    ),
                    const SizedBox(height: AppSize.s14,),
                    Container(
                      width: AppSize.s80,
                      height: AppSize.s6,
                      color: ColorManager.gray,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
