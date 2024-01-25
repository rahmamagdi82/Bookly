import 'book_entity.dart';

class ListEntity{
  final String? listName;
  final List<BookEntity> books;

  ListEntity({required this.listName, required this.books});
}