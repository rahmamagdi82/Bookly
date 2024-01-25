import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/entities/list_entity.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/get_best_seller_books_use_case.dart';

part 'get_best_seller_books_state.dart';

class GetBestSellerBooksCubit extends Cubit<GetBestSellerBooksState> {
  GetBestSellerBooksCubit(this.getBestSellerBooksUseCase) : super(GetBestSellerBooksInitial());

  final GetBestSellerBooksUseCase getBestSellerBooksUseCase;
  Future<void> getBestSellerBooks() async {
    emit(GetBestSellerBooksLoading());
    var result = await getBestSellerBooksUseCase.call();
    result.fold((failure) => emit(GetBestSellerBooksFailure(failure.message)), (bestSellerBooks) => emit(GetBestSellerBooksSuccess(bestSellerBooks)));
  }
}
