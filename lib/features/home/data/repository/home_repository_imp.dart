import 'package:bookly_app_test/core/errors/failure.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/domain/entities/overview_list_entity.dart';
import 'package:bookly_app_test/features/home/domain/repository/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class HomeRepositoryImp extends HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepositoryImp(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<OverviewListEntity>>> getBooks() async {
    try {
      List<OverviewListEntity> result;
      // result = homeLocalDataSource.getBooks(pageNumber: pageNumber);
      // if (result.isNotEmpty) {
      //   return right(result);
      // }
      result = await homeRemoteDataSource.getBooks();
      return right(result);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(message: e.toString(), ));
    }
  }

  @override
  Future<Either<Failure, List<OverviewListEntity>>> getBestSellerBooks() async {
    try{
      List<OverviewListEntity> result;
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
