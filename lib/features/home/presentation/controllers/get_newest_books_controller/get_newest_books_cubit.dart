import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/use_cases/get_newest_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_newest_books_state.dart';

class GetNewestBooksCubit extends Cubit<GetNewestBooksState> {
  GetNewestBooksCubit(this.getNewestBooksUseCase) : super(GetNewestBooksInitial());

  final GetNewestBooksUseCase getNewestBooksUseCase;
  Future<void> getNewestBooks() async {
    emit(GetNewestBooksLoading());
    var result = await getNewestBooksUseCase.call();
    result.fold((failure) => emit(GetNewestBooksFailure(failure.message)), (newestBooks) => emit(GetNewestBooksSuccess(newestBooks)));
  }
}
