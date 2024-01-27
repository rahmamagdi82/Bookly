import 'package:bookly_app_test/core/widgets/custom_fading_widget.dart';
import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../../core/utils/router_manager.dart';
import 'custom_cached_network_image.dart';



class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.bookDetailsModel});

  final BookDetailsModel bookDetailsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.push(AppRouter.bookDetailsPath,extra: bookDetailsModel);
      },
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s14),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: CustomCachedNetworkImage(image: bookDetailsModel.book.image,)
        ),
      ),
    );
  }
}
