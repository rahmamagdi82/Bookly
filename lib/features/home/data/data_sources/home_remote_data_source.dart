import 'package:bookly_app_test/core/utils/api_services.dart';
import 'package:bookly_app_test/core/utils/hive_services.dart';
import 'package:bookly_app_test/features/home/data/models/BookModel.dart';
import 'package:bookly_app_test/resource/constants.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> getBooks({int pageNumber = 0});
  Future<List<BookEntity>> getNewestBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  final ApiServices apiServices;
  HomeRemoteDataSourceImp(this.apiServices);

  String getBooksEndPoint({int pageNumber = 0}) => 'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}';
  final String getNewestBooksEndPoint = 'volumes?Filtering=free-ebooks&q=programming&Sorting=newest';

  @override
  Future<List<BookEntity>> getBooks({int pageNumber = 0}) async {
    final result = await apiServices.get(endPoint: getBooksEndPoint(pageNumber: pageNumber));
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