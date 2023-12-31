import 'package:bookly_app_test/core/errors/failure.dart';
import 'package:bookly_app_test/core/use_cases/use_case.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/repository/home_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetBooksUseCase extends UseCase<List<BookEntity>,int>{
  final HomeRepository homeRepository;

  GetBooksUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int pageNumber = 0]) {
    return homeRepository.getBooks(pageNumber: pageNumber);
  }
}