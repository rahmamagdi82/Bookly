part of 'get_best_seller_books_cubit.dart';



abstract class GetBestSellerBooksState {}

class GetBestSellerBooksInitial extends GetBestSellerBooksState {}
class GetBestSellerBooksLoading extends GetBestSellerBooksState {}
class GetBestSellerBooksSuccess extends GetBestSellerBooksState {
  final List<OverviewListEntity> lists;
  GetBestSellerBooksSuccess(this.lists);
}
class GetBestSellerBooksFailure extends GetBestSellerBooksState {
  final String message;
  GetBestSellerBooksFailure(this.message);
}

