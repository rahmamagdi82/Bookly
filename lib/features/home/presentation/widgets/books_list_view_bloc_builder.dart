import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/get_books_controller/get_books_cubit.dart';
import 'books_list_view.dart';

class BooksListViewBlocBuilder extends StatelessWidget {
  const BooksListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<BookEntity> books = [];
    return BlocConsumer<GetBooksCubit,GetBooksState>(
      listener: (context,state){
        if(state is GetBooksSuccess){
          books.addAll(state.books);
        }

        if (state is GetBooksPaginationFailure){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (BuildContext context, state) {
        if(state is GetBooksFailure){
          return Center(child: Text(state.message));
        }
        else if(state is GetBooksSuccess || state is GetBooksPaginationLoading || state is GetBooksPaginationFailure){
          return BooksListView(books: books,);
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
