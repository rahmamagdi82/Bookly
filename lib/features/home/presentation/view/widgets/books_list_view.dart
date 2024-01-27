import 'package:bookly_app_test/core/utils/resources/values_manager.dart';
import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/overview_list_entity.dart';
import 'books_list_view_item.dart';

class BooksListView extends StatelessWidget{
  const BooksListView({super.key, required this.lists});

  final List<OverviewListEntity> lists;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3.6,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: lists.map((e) =>
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => BooksListViewItem(bookDetailsModel: BookDetailsModel(listName: e.listName, book: e.books[index]),),
                  separatorBuilder: (context,index) => const SizedBox(width: AppSize.s15,),
                  itemCount:  e.books.length
              ),
          ).toList()
        ),
      )
    );
  }
}