import 'package:flutter/material.dart';

import '../../../../resource/style_manager.dart';
import '../../../../resource/values_Manager.dart';
import 'best_seller_list_view.dart';
import 'books_list_view.dart';

class HomeBodyViewWidget extends StatelessWidget{
  const HomeBodyViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
      child: CustomScrollView(
          slivers:[
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BooksListView(),
                  const SizedBox(height: AppSize.s50,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                    child: Text('Best Seller',style: FontStyles.getSemiBoldStyle()),
                  ),
                  const SizedBox(height: AppSize.s20,),
                ],
              ),
            ),
            const BestSellerListView(),
          ]
      ),
    );
  }
}
