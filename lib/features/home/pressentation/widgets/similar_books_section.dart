import 'package:bookly_app_test/features/home/pressentation/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../resource/style_manager.dart';
import '../../../../resource/values_Manager.dart';

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