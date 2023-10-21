import 'package:bloc/bloc.dart';
import 'package:bookly_app_test/features/home/domain/use_cases/get_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'get_books_state.dart';

class GetBooksCubit extends Cubit<GetBooksState> {
  GetBooksCubit(this.getBooksUseCase) : super(GetBooksInitial());

  final GetBooksUseCase getBooksUseCase;
  Future<void> getBooks() async {
    emit(GetBooksLoading());
    var result = await getBooksUseCase.call();

    result.fold((failure) => emit(GetBooksFailure(failure.message)),
        (books) => emit(GetBooksSuccess(books)));
  }
}
