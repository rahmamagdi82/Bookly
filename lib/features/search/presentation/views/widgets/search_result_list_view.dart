import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../core/utils/resources/style_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';
import '../../../../home/presentation/view/widgets/best_seller_list_view.dart';


class SearchResultListView extends StatelessWidget{
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: Text('Search Result', style: FontStyles.getSemiBoldStyle()),
      ),
      const SizedBox(
        height: AppSize.s20,
      ),
      const BestSellerListView(items: [],)
    ]);
  }
}