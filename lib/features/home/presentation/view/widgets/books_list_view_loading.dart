import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/values_manager.dart';
import 'books_list_view_item_loading.dart';

class BooksListViewLoading extends StatelessWidget{
  const BooksListViewLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3.6,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => const BooksListViewItemLoading(),
          separatorBuilder: (context,index) => const SizedBox(width: AppSize.s15,),
          itemCount: 10
      ),
    );
  }
}