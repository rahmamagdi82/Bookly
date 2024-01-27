
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/overview_list_entity.dart';
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
