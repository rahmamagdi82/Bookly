import 'package:bookly_app_test/core/utils/api_services.dart';
import '../models/overview_list_model.dart';

abstract class HomeRemoteDataSource{
  Future<List<OverviewListModel>> getBooks();
  Future<List<OverviewListModel>> getBestSellerBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  final ApiServices apiServices;
  HomeRemoteDataSourceImp(this.apiServices);

  final String getOverViewBooksEndPoint = '/full-overview.json';
  final String getBestSellerBooksEndPoint = '/overview.json';

  // final String getBestSellerBooksEndPoint = '/current/Childrens Middle Grade Hardcover.json';

  @override
  Future<List<OverviewListModel>> getBooks() async {
    final result = await apiServices.get(endPoint: getOverViewBooksEndPoint);
     List<OverviewListModel> books = getBooksList(result);
    // getBooksList(result);
    //
    // // HiveServices.addAllData<BookEntity>(books, AppConstants.getBooksBox);

    return books;
  }

  @override
  Future<List<OverviewListModel>> getBestSellerBooks() async {
    final result = await apiServices.get(endPoint: getBestSellerBooksEndPoint);
    List<OverviewListModel> books = getBooksList(result);

    // HiveServices.addAllData<BookEntity>(books, AppConstants.getNewestBooksBox);

    return books;
  }


  List<OverviewListModel> getBooksList(Map<String,dynamic> json){
    List<OverviewListModel> books = [];

    for(var bookMap in json['results']['lists']){

      books.add(OverviewListModel.fromJson(bookMap));
    }

    return books;
  }


  // List<BestSellerBookModel> getBestSellerBooksList(Map<String,dynamic> json){
  //   List<BestSellerBookModel> books = [];
  //
  //   for(var bookMap in json['results']['books']){
  //
  //     books.add(BestSellerBookModel.fromJson(bookMap));
  //   }
  //
  //   return books;
  // }
}