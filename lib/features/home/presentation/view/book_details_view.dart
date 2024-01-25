import 'package:bookly_app_test/features/home/data/models/book_details_model.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/presentation/view/widgets/book_details_body_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class BookDetailsView extends StatelessWidget{
  const BookDetailsView({super.key, required this.bookDetailsModel});
  final BookDetailsModel bookDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: IconButton(onPressed: () {
          context.pop();
        }, icon: const Icon(Icons.close),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: BookDetailsBodyViewWidget(bookDetailsModel: bookDetailsModel,),
    );
  }
}