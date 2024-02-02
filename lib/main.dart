import 'package:bookly_app_test/core/utils/dependancy_injection.dart';
import 'package:bookly_app_test/core/utils/resources/color_manager.dart';
import 'package:bookly_app_test/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app_test/features/home/presentation/controllers/get_best_seller_books_controller/get_best_seller_books_cubit.dart';
import 'package:bookly_app_test/features/home/presentation/controllers/get_books_controller/get_books_cubit.dart';

import 'package:bookly_app_test/resource/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utils/bloc_observe.dart';
import 'core/utils/router_manager.dart';

Future<void> main() async {
  Bloc.observer = MyBlocObserver();
  await initAppModule();
  await Hive.initFlutter();
  //TODO:hive
  // Hive.registerAdapter(BookEntityAdapter());
  // await Hive.openBox<BookEntity>(AppConstants.getBooksBox);
  // await Hive.openBox<BookEntity>(AppConstants.getNewestBooksBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>getItInstance<GetBooksCubit>()..getBooks()),
        BlocProvider(
            create: (context) => getItInstance<GetBestSellerBooksCubit>()..getBestSellerBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: ColorManager.primary,
            appBarTheme: const AppBarTheme()
                .copyWith(backgroundColor: ColorManager.primary, elevation: 0),
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}




///fdkfdnn