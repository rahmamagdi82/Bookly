import 'package:bookly_app_test/core/utils/resources/color_manager.dart';
import 'package:bookly_app_test/core/widgets/custom_fading_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/resources/values_manager.dart';

class BooksListViewItemLoading extends StatelessWidget{
  const BooksListViewItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: AspectRatio(
        aspectRatio: 2/3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s14),
            color: ColorManager.gray,
          ),
        ),
      ),
    );
  }
}