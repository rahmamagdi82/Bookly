part of 'get_best_seller_books_cubit.dart';



abstract class GetBestSellerBooksState {}

class GetBestSellerBooksInitial extends GetBestSellerBooksState {}
class GetBestSellerBooksLoading extends GetBestSellerBooksState {}
class GetBestSellerBooksSuccess extends GetBestSellerBooksState {
  final List<ListEntity> bestSellerBooks;
  GetBestSellerBooksSuccess(this.bestSellerBooks);
}
class GetBestSellerBooksFailure extends GetBestSellerBooksState {
  final String message;
  GetBestSellerBooksFailure(this.message);
}

