import 'package:bookly_app_test/core/errors/failure.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/repository/home_repository.dart';
import 'package:fpdart/fpdart.dart';

class HomeRepositoryImp extends HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepositoryImp(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> getBooks() async {
    try {
      List<BookEntity> result;
      result = homeLocalDataSource.getBooks();
      if (result.isNotEmpty) {
        return right(result);
      }
      result = await homeRemoteDataSource.getBooks();
      return right(result);
    } catch (e) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> getNewestBooks() async {
    try{
      List<BookEntity> result;
      result = homeLocalDataSource.getNewestBooks();
      if(result.isNotEmpty){
        return right(result);
      }
      result = await homeRemoteDataSource.getNewestBooks();
      return right(result);
    } catch(e)
    {
      return Left(Failure());
    }
  }
}
