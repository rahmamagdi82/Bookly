import 'package:bookly_app_test/features/home/presentation/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/values_Manager.dart';
import 'book_details_section.dart';


class BookDetailsBodyViewWidget extends StatelessWidget {
  const BookDetailsBodyViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p16),
        sliver: SliverToBoxAdapter(
          child: Column(
            children: [
              BookDetailsSection(),
              SizedBox(
                height: AppSize.s50,
              ),
              SimilarBooksSection(),
              SizedBox(
                height: AppSize.s16,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}


