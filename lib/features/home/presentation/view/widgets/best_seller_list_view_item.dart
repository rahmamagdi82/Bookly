import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../../core/utils/resources/color_manager.dart';
import '../../../../../core/utils/resources/font_manager.dart';
import '../../../../../core/utils/resources/style_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../../core/utils/router_manager.dart';
import '../../../../../resource/constants.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget{
  const BestSellerListViewItem({super.key, required this.bookDetailsModel});
  final BookDetailsModel bookDetailsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.push(AppRouter.bookDetailsPath,extra: bookDetailsModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: SizedBox(
          height: AppSize.s105,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2/3,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(AppSize.s14),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(bookDetailsModel.book.image!)
                      )
                  ),
                ),
              ),
              const SizedBox(width: AppSize.s30,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Text(
                        bookDetailsModel.book.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: FontStyles.getRegularStyle().copyWith(fontFamily: AppConstants.fontFamily,fontSize: FontSize.s20,height: 1.1),
                      ),
                    ),
                    const SizedBox(height: AppSize.s4,),
                    Text(
                      bookDetailsModel.book.authorName!,
                      style: FontStyles.getMediumStyle().copyWith(color: ColorManager.gray),
                    ),
                    const SizedBox(height: AppSize.s3,),
                    Row(
                      children: [
                        //TODO: price
                        // Text(
                        //   '${item.price}',
                        //   style: FontStyles.getBoldStyle().copyWith(fontSize: FontSize.s20),
                        // ),
                        const Spacer(),
                        const BookRating()
                      ],
                    )
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
