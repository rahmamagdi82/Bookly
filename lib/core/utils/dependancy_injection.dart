import 'package:bookly_app_test/core/utils/api_services.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app_test/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app_test/features/home/data/repository/home_repository_imp.dart';
import 'package:bookly_app_test/features/home/domain/repository/home_repository.dart';
import 'package:bookly_app_test/features/home/domain/use_cases/get_books_use_case.dart';
import 'package:bookly_app_test/features/home/domain/use_cases/get_newest_books_use_case.dart';
import 'package:bookly_app_test/features/home/presentation/controllers/get_books_controller/get_books_cubit.dart';
import 'package:bookly_app_test/features/home/presentation/controllers/get_newest_books_controller/get_newest_books_cubit.dart';
import 'package:get_it/get_it.dart';

final getItInstance = GetIt.instance;

Future<void> initAppModule() async{


  // api service
  getItInstance.registerLazySingleton<ApiServices>(() => ApiServices());

  // remote data source
  getItInstance.registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSourceImp(getItInstance()));

  // local data source
  getItInstance.registerLazySingleton<HomeLocalDataSource>(() => HomeLocalDataSourceImp());

  // repository
  getItInstance.registerLazySingleton<HomeRepository>(() => HomeRepositoryImp(homeRemoteDataSource: getItInstance(), homeLocalDataSource: getItInstance()));

  // use case
  getItInstance.registerFactory<GetBooksUseCase>(() => GetBooksUseCase(getItInstance()));
  getItInstance.registerFactory<GetNewestBooksUseCase>(() => GetNewestBooksUseCase(getItInstance()));


  getItInstance.registerFactory(() => GetBooksCubit(getItInstance()));
  getItInstance.registerFactory(() => GetNewestBooksCubit(getItInstance()));


}