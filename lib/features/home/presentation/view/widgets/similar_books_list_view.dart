import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/values_manager.dart';
import 'books_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget{
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/7.25,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => BooksListViewItem(bookDetailsModel: BookDetailsModel(listName: '', book: BookEntity(image: '', title: '', authorName: '', rank: null, buyLinks: [])),),
          separatorBuilder: (context,index) => const SizedBox(width: AppSize.s10,),
          itemCount: 7
      ),
    );
  }
}
