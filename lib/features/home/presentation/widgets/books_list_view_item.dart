import 'package:flutter/material.dart';

import '../../../../core/utils/resources/values_manager.dart';

class BooksListViewItem extends StatelessWidget{
  const BooksListViewItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s14),
          image: DecorationImage(
            fit: BoxFit.fill,
              image: NetworkImage(image)
          )
        ),
      ),
    );
  }
}