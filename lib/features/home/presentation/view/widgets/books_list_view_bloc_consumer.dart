import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controllers/get_books_controller/get_books_cubit.dart';
import 'books_list_view.dart';
import 'books_list_view_loading.dart';

class BooksListViewBlocConsumer extends StatelessWidget {
  const BooksListViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBooksCubit,GetBooksState>(
      builder: (BuildContext context, state) {
        if(state is GetBooksFailure){
          return Center(child: Text(state.message));
        }
        else if(state is GetBooksSuccess){
          return BooksListView(lists: state.lists,);
        }
        else {
          return const BooksListViewLoading();
        }
      },
    );
  }
}
