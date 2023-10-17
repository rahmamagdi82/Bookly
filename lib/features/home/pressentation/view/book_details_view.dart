import 'package:flutter/material.dart';

import '../widgets/book_details_body_view_widget.dart';

class BookDetailsView extends StatelessWidget{
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: IconButton(onPressed: () {  }, icon: const Icon(Icons.close),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: const BookDetailsBodyViewWidget(),
    );
  }
}