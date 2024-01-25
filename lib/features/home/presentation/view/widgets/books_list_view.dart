import 'package:bookly_app_test/core/utils/resources/values_manager.dart';
import 'package:bookly_app_test/features/home/presentation/controllers/get_books_controller/get_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import 'books_list_view_item.dart';

class BooksListView extends StatefulWidget{
  const BooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<BooksListView> createState() => _BooksListViewState();
}

class _BooksListViewState extends State<BooksListView> {

  late ScrollController _scrollController;
  int index = 1;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3.6,
      child: ListView.separated(
        controller: _scrollController,
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => BooksListViewItem(image: widget.books[index].image!,),
          separatorBuilder: (context,index) => const SizedBox(width: AppSize.s15,),
          itemCount: widget.books.length
      ),
    );
  }

  Future<void> _scrollListener() async {
    if(_scrollController.position.pixels >= 0.7 * _scrollController.position.maxScrollExtent){
      if(!isLoading){
        isLoading = true;
        await BlocProvider.of<GetBooksCubit>(context).getBooks(pageNumber: index++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

}