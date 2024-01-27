import 'package:bookly_app_test/features/home/presentation/view/widgets/best_seller_list_view_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../core/utils/resources/style_manager.dart';
import '../../../../../core/utils/resources/values_manager.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: Text('Best Seller', style: FontStyles.getSemiBoldStyle()),
      ),
      const SizedBox(
        height: AppSize.s20,
      ),
      const BestSellerListViewBlocConsumer()
    ]);
  }
}
