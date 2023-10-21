import 'package:bookly_app_test/features/home/presentation/controllers/get_books_controller/get_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/resources/values_manager.dart';
import 'best_seller_section.dart';
import 'books_list_view.dart';

class HomeBodyViewWidget extends StatelessWidget {
  const HomeBodyViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: AppPadding.p16),
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: BooksListViewBlocBuilder(),
        ),
        SliverToBoxAdapter(
            child: SizedBox(
          height: AppSize.s50,
        )),
        BestSellerSection()
      ]),
    );
  }
}

class BooksListViewBlocBuilder extends StatelessWidget {
  const BooksListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBooksCubit,GetBooksState>(
      builder: (BuildContext context, state) {
        if(state is GetBooksFailure){
          print(state.message);
          return Center(child: Text(state.message));
        }
        else if(state is GetBooksSuccess){
          return BooksListView(books: state.books,);
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }

      },
    );
  }
}
