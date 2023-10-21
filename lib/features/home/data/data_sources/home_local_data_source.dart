import 'package:bookly_app_test/resource/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource{
  List<BookEntity> getBooks({int pageNumber = 0});
  List<BookEntity> getNewestBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource{
  @override
  List<BookEntity> getBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;

    var box = Hive.box<BookEntity>(AppConstants.getBooksBox);
    if(startIndex >= box.length || endIndex > box.length){
      return [];
    }
    return box.values.toList();
  }

  @override
  List<BookEntity> getNewestBooks() {
    var box = Hive.box<BookEntity>(AppConstants.getNewestBooksBox);
    return box.values.toList();
  }
}