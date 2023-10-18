import 'package:flutter/material.dart';

import '../../../../core/utils/values_Manager.dart';
import 'books_list_view_item.dart';

class BooksListView extends StatelessWidget{
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3.6,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => const BooksListViewItem(),
          separatorBuilder: (context,index) => const SizedBox(width: AppSize.s15,),
          itemCount: 7
      ),
    );
  }
}