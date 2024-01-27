import 'package:bookly_app_test/features/home/presentation/controllers/get_best_seller_books_controller/get_best_seller_books_cubit.dart';
import 'package:bookly_app_test/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_books_list_view_loading.dart';


class BestSellerListViewBlocConsumer extends StatelessWidget {
  const BestSellerListViewBlocConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBestSellerBooksCubit,GetBestSellerBooksState>(builder: (context,state){
      if(state is GetBestSellerBooksSuccess){
        return BestSellerListView(lists: state.lists,);
      }
      else if(state is GetBestSellerBooksFailure){
        return Center(child: Text(state.message));
      }
      else{
        return const BestSellerBooksListViewLoading();
      }

    });
  }
}
