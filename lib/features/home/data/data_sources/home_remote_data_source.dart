import 'package:bookly_app_test/core/utils/api_services.dart';
import 'package:bookly_app_test/features/home/data/models/best_seller_books_of_list_model.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> getBooks({int pageNumber = 0});
  Future<List<BestSellerBooksOfListModel>> getBestSellerBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  final ApiServices apiServices;
  HomeRemoteDataSourceImp(this.apiServices);

  String getBooksEndPoint({int pageNumber = 0}) => 'volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}';
  final String getBestSellerBooksEndPoint = '/overview.json';

  @override
  Future<List<BookEntity>> getBooks({int pageNumber = 0}) async {
    // final result = await apiServices.get(endPoint: getBooksEndPoint(pageNumber: pageNumber));
     List<BookEntity> books = [];
    // getBooksList(result);
    //
    // // HiveServices.addAllData<BookEntity>(books, AppConstants.getBooksBox);

    return books;
  }

  @override
  Future<List<BestSellerBooksOfListModel>> getBestSellerBooks() async {
    final result = await apiServices.get(endPoint: getBestSellerBooksEndPoint);
    List<BestSellerBooksOfListModel> books = getBooksList(result);

    // HiveServices.addAllData<BookEntity>(books, AppConstants.getNewestBooksBox);

    return books;
  }


  List<BestSellerBooksOfListModel> getBooksList(Map<String,dynamic> json){
    List<BestSellerBooksOfListModel> books = [];

    for(var bookMap in json['results']['lists']){

      books.add(BestSellerBooksOfListModel.fromJson(bookMap));
    }

    return books;
  }
}