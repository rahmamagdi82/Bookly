import 'package:bookly_app_test/features/home/presentation/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/resources/style_manager.dart';
import '../../../../core/utils/resources/values_manager.dart';

class SimilarBooksSection extends StatelessWidget{
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: FontStyles.getSemiBoldStyle(),
        ),
        const SizedBox(
          height: AppSize.s16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}