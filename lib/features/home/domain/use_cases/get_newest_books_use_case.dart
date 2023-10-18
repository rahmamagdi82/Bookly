import 'package:bookly_app_test/core/errors/failure.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/repository/home_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/use_cases/use_case.dart';

class GetNewestBooksUseCase extends UseCase<List<BookEntity>,void>{
  final HomeRepository homeRepository;

  GetNewestBooksUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void params]) {
    return homeRepository.getNewestBooks();
  }
}