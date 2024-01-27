import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
import 'package:bookly_app_test/features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/values_manager.dart';
import 'book_details_section.dart';


class BookDetailsBodyViewWidget extends StatelessWidget {
  const BookDetailsBodyViewWidget({super.key, required this.bookDetailsModel,});
  final BookDetailsModel bookDetailsModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        sliver: SliverToBoxAdapter(
          child: Column(
            children: [
              BookDetailsSection( bookDetailsModel: bookDetailsModel,),
              const SizedBox(
                height: AppSize.s30,
              ),
              const SimilarBooksSection(),
              const SizedBox(
                height: AppSize.s16,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}


