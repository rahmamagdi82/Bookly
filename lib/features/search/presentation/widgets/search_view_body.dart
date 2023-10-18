import 'package:bookly_app_test/core/utils/values_Manager.dart';
import 'package:bookly_app_test/features/search/presentation/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget{
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p16),
        child: CustomScrollView(
          slivers:[
            SliverToBoxAdapter(child: CustomSearchTextField()),
            SliverToBoxAdapter(child: SizedBox(height: AppSize.s30,)),
            SearchResultListView()
          ]
        ),
      ),
    );
  }
}