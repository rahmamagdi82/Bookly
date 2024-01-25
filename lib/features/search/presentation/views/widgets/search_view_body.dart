import 'package:bookly_app_test/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/resources/values_manager.dart';
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