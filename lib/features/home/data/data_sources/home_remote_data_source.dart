import 'package:bookly_app_test/core/utils/api_services.dart';
import 'package:bookly_app_test/core/utils/hive_services.dart';
import 'package:bookly_app_test/features/home/data/models/BookModel.dart';
import 'package:bookly_app_test/resource/constants.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> getBooks();
  Future<List<BookEntity>> getNewestBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  final ApiServices apiServices;
  HomeRemoteDataSourceImp(this.apiServices);

  final String getBooksEndPoint = 'volumes?Filtering=free-ebooks&q=programming';
  final String getNewestBooksEndPoint = 'volumes?Filtering=free-ebooks&q=programming&Sorting=newest';

  @override
  Future<List<BookEntity>> getBooks() async {
    final result = await apiServices.get(endPoint: getBooksEndPoint);
    List<BookEntity> books = getBooksList(result);

    HiveServices.addAllData<BookEntity>(books, AppConstants.getBooksBox);

    return books;
  }

  @override
  Future<List<BookEntity>> getNewestBooks() async {
    final result = await apiServices.get(endPoint: getNewestBooksEndPoint);
    List<BookEntity> books = getBooksList(result);

    HiveServices.addAllData<BookEntity>(books, AppConstants.getNewestBooksBox);

    return books;
  }


  List<BookEntity> getBooksList(Map<String,dynamic> json){
    List<BookEntity> books = [];
    for(var bookMap in json['items']){
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}