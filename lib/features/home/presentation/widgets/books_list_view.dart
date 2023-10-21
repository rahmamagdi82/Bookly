import 'package:flutter/material.dart';

import '../../../../core/utils/resources/values_manager.dart';
import '../../domain/entities/book_entity.dart';
import 'books_list_view_item.dart';

class BooksListView extends StatelessWidget{
  const BooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3.6,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => BooksListViewItem(image: books[index].image!,),
          separatorBuilder: (context,index) => const SizedBox(width: AppSize.s15,),
          itemCount: books.length
      ),
    );
  }
}