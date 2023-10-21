part of 'get_books_cubit.dart';

@immutable
abstract class GetBooksState {}

class GetBooksInitial extends GetBooksState {}
class GetBooksLoading extends GetBooksState {}
class GetBooksSuccess extends GetBooksState {
  final List<BookEntity> books;

  GetBooksSuccess(this.books);
}
class GetBooksFailure extends GetBooksState {
  final String message;

  GetBooksFailure(this.message);
}

