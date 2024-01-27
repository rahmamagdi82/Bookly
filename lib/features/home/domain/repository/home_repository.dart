import 'package:bookly_app_test/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/overview_list_entity.dart';

abstract class HomeRepository{
  Future<Either<Failure,List<OverviewListEntity>>> getBooks();
  Future<Either<Failure,List<OverviewListEntity>>> getBestSellerBooks();
}