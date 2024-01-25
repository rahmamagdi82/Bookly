import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
import 'package:bookly_app_test/features/home/domain/entities/list_entity.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/values_manager.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget{
  const BestSellerListView({super.key, required this.items});
  final List<ListEntity> items;


  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return BestSellerListViewItem(bookDetailsModel: BookDetailsModel(listName: items[index].listName!, book: items[index].books[0]),);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: AppSize.s20,);
      },);
  }
}