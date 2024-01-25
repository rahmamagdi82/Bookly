import 'package:bookly_app_test/core/errors/failure.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/entities/list_entity.dart';
import 'package:bookly_app_test/features/home/domain/repository/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class HomeRepositoryImp extends HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepositoryImp(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> getBooks({int pageNumber = 0}) async {
    try {
      List<BookEntity> result;
      result = homeLocalDataSource.getBooks(pageNumber: pageNumber);
      if (result.isNotEmpty) {
        return right(result);
      }
      result = await homeRemoteDataSource.getBooks(pageNumber: pageNumber);
      return right(result);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(message: e.toString(), ));
    }
  }

  @override
  Future<Either<Failure, List<ListEntity>>> getBestSellerBooks() async {
    try{
      List<ListEntity> result;
      // result = homeLocalDataSource.getNewestBooks();
      // if(result.isNotEmpty){
      //   return right(result);
      // }
      result = await homeRemoteDataSource.getBestSellerBooks();
      return right(result);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(message: e.toString(), ));
    }
  }
}
