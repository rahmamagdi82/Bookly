import 'package:bookly_app_test/core/errors/failure.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/repository/home_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/use_cases/use_case.dart';
import '../entities/list_entity.dart';

class GetBestSellerBooksUseCase extends UseCase<List<ListEntity>,void>{
  final HomeRepository homeRepository;

  GetBestSellerBooksUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<ListEntity>>> call([void params]) {
    return homeRepository.getBestSellerBooks();
  }
}