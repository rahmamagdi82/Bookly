import 'package:bookly_app_test/resource/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../../resource/style_manager.dart';
import '../../../../resource/values_Manager.dart';
import 'featured_list_view_item.dart';

class HomeBodyViewWidget extends StatelessWidget{
  const HomeBodyViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FeaturedListViewItem(),
          const SizedBox(height: AppSize.s50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            child: Text('Best Seller',style: FontStyles.getSemiBoldStyle(color: ColorManager.white)),
          )
        ],
      ),
    );
  }
}