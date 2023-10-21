import 'package:flutter/material.dart';

import '../../../../core/utils/resources/values_manager.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget{
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return const BestSellerListViewItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: AppSize.s20,);
      },);
  }
}