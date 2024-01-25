import 'package:bookly_app_test/core/widgets/custom_fading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';



class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s14),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.fill,
          placeholder: (context,text){
            return CustomFadingWidget(child: Container(color: ColorManager.gray,));
          },
        ),
      ),
    );
  }
}
