part of 'get_newest_books_cubit.dart';

@immutable
abstract class GetNewestBooksState {}

class GetNewestBooksInitial extends GetNewestBooksState {}
class GetNewestBooksLoading extends GetNewestBooksState {}
class GetNewestBooksSuccess extends GetNewestBooksState {
  final List<BookEntity> newestBooks;
  GetNewestBooksSuccess(this.newestBooks);
}
class GetNewestBooksFailure extends GetNewestBooksState {
  final String message;
  GetNewestBooksFailure(this.message);
}

