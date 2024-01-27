import 'book_entity.dart';

class OverviewListEntity{
  final String listName;
  final List<BookEntity> books;

  OverviewListEntity({required this.listName, required this.books});
}