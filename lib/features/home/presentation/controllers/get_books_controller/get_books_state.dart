part of 'get_books_cubit.dart';

abstract class GetBooksState {}

class GetBooksInitial extends GetBooksState {}
class GetBooksLoading extends GetBooksState {}
class GetBooksSuccess extends GetBooksState {
  final List<OverviewListEntity> lists;

  GetBooksSuccess(this.lists);
}
class GetBooksFailure extends GetBooksState {
  final String message;

  GetBooksFailure(this.message);
}

