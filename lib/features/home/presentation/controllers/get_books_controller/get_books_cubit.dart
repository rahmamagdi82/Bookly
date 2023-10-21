import 'package:bookly_app_test/features/home/domain/use_cases/get_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'get_books_state.dart';

class GetBooksCubit extends Cubit<GetBooksState> {
  GetBooksCubit(this.getBooksUseCase) : super(GetBooksInitial());

  final GetBooksUseCase getBooksUseCase;
  Future<void> getBooks({int pageNumber = 0}) async {
    emit(GetBooksLoading());
    var result = await getBooksUseCase.call(pageNumber);

    result.fold((failure) => emit(GetBooksFailure(failure.message)),
        (books) => emit(GetBooksSuccess(books)));
  }
}
