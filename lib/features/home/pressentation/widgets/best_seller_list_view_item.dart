import 'package:bookly_app_test/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../resource/color_manager.dart';
import '../../../../resource/font_manager.dart';
import '../../../../resource/style_manager.dart';
import '../../../../resource/values_Manager.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget{
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.push(AppRouter.bookDetailsPath);
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
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage('https://www.readriordan.com/wp-content/uploads/2022/02/Lightning-Thief-flat-cover.png')
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
                        'Harry Potter and the Goblet of Fire',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: FontStyles.getRegularStyle().copyWith(fontFamily: FontConstants.fontFamily,fontSize: FontSize.s20,height: 1.1),
                      ),
                    ),
                    const SizedBox(height: AppSize.s4,),
                    Text(
                      'J.K. Rowling',
                      style: FontStyles.getMediumStyle().copyWith(color: ColorManager.gray),
                    ),
                    const SizedBox(height: AppSize.s3,),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: FontStyles.getBoldStyle().copyWith(fontSize: FontSize.s20),
                        ),
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
