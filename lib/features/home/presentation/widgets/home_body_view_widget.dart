import 'package:flutter/material.dart';

import '../../../../core/utils/resources/values_manager.dart';
import 'best_seller_section.dart';
import 'books_list_view.dart';

class HomeBodyViewWidget extends StatelessWidget{
  const HomeBodyViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: AppPadding.p16),
      child: CustomScrollView(
          slivers:[
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BooksListView(),
                  SizedBox(height: AppSize.s50,),
                ],
              ),
            ),
            BestSellerSection()
          ]
      ),
    );
  }
}
