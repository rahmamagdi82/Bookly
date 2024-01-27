import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
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
  const BookDetailsSection({super.key, required this.bookDetailsModel});
  final BookDetailsModel bookDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: BooksListViewItem( bookDetailsModel: bookDetailsModel,),
        ),
        const SizedBox(
          height: AppSize.s40,
        ),
        Text(
          bookDetailsModel.book.title,
          textAlign: TextAlign.center,
          style: FontStyles.getRegularStyle().copyWith(
            fontSize: FontSize.s30,
            fontFamily: AppConstants.fontFamily,
          ),
        ),
        Text(
          bookDetailsModel.book.authorName,
          style: FontStyles.getMediumStyle().copyWith(
              fontSize: FontSize.s18,
              color: ColorManager.whiteWithOpacity70,
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: AppSize.s16,
        ),
        BookRating(rank: bookDetailsModel.book.rank!,),
        const SizedBox(
          height: AppSize.s37,
        ),
        BookActions(buyLinks: bookDetailsModel.book.buyLinks,),
      ],
    );
  }
}