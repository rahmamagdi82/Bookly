import 'package:bookly_app_test/resource/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource{
  List<BookEntity> getBooks();
  List<BookEntity> getNewestBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource{
  @override
  List<BookEntity> getBooks() {
    var box = Hive.box<BookEntity>(AppConstants.getBooksBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> getNewestBooks() {
    var box = Hive.box<BookEntity>(AppConstants.getNewestBooksBox);
    return box.values.toList();
  }
}