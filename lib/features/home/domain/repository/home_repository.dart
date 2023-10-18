import 'package:bookly_app_test/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/book_entity.dart';

abstract class HomeRepository{
  Future<Either<Failure,List<BookEntity>>> getBooks();
  Future<Either<Failure,List<BookEntity>>> getNewestBooks();
}