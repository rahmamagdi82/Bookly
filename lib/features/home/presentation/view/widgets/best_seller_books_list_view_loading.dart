import 'package:bookly_app_test/features/home/presentation/view/widgets/best_seller_books_list_view_item_loading.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/values_manager.dart';

class BestSellerBooksListViewLoading extends StatelessWidget {
  const BestSellerBooksListViewLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const BestSellerBooksListViewItemLoading();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: AppSize.s20,);
      },);
  }
}
