import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';

class BookDetailsModel{
  final String listName;
  final BookEntity book;

  BookDetailsModel({required this.listName, required this.book});
}