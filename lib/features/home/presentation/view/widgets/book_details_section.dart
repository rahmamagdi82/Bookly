import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';


import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/font_manager.dart';
import '../../../../../core/utils/resources/style_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../../resource/constants.dart';
import 'book_actions.dart';
import 'book_rating.dart';
import 'books_list_view_item.dart';

class BookDetailsSection extends StatelessWidget{
  const BookDetailsSection({super.key, required this.item});
  final BookEntity item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: BooksListViewItem(image: item.image!,),
        ),
        const SizedBox(
          height: AppSize.s40,
        ),
        Text(
          item.title,
          style: FontStyles.getRegularStyle().copyWith(
            fontSize: FontSize.s30,
            fontFamily: AppConstants.fontFamily,
          ),
        ),
        Text(
          item.authorName!,
          style: FontStyles.getMediumStyle().copyWith(
              fontSize: FontSize.s18,
              color: ColorManager.whiteWithOpacity70,
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: AppSize.s16,
        ),
        const BookRating(),
        const SizedBox(
          height: AppSize.s37,
        ),
        const BookActions(),
      ],
    );
  }
}