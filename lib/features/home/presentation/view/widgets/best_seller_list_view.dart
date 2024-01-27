import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/values_manager.dart';
import '../../../domain/entities/overview_list_entity.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget{
  const BestSellerListView({super.key,required this.lists});
  final List<OverviewListEntity> lists;


  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: lists.length,
      itemBuilder: (BuildContext context, int index) {
        return BestSellerListViewItem(bookDetailsModel: BookDetailsModel(listName: lists[index].listName, book: lists[index].books[0]),);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: AppSize.s20,);
      },);
  }
}