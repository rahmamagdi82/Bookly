import 'package:flutter/material.dart';

import '../../../../resource/values_Manager.dart';
import 'books_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget{
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/7.25,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => const BooksListViewItem(),
          separatorBuilder: (context,index) => const SizedBox(width: AppSize.s10,),
          itemCount: 7
      ),
    );
  }
}
