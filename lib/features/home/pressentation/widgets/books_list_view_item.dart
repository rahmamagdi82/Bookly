import 'package:bookly_app_test/resource/values_Manager.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget{
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2/3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(AppSize.s14),
          image: const DecorationImage(
            fit: BoxFit.fill,
              image: NetworkImage('https://www.readriordan.com/wp-content/uploads/2022/02/Lightning-Thief-flat-cover.png')
          )
        ),
      ),
    );
  }
}