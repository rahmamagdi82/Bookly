import 'package:bookly_app_test/features/home/pressentation/view/book_details_view.dart';
import 'package:bookly_app_test/features/home/pressentation/view/home_view.dart';
import 'package:bookly_app_test/features/splash/pressentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeViewPath = '/homeView';
  static const bookDetailsPath = '/bookDetails';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          path: homeViewPath,
          builder: (context, state) => const HomeView(),
      ),
      GoRoute(path: bookDetailsPath, builder: (context, state) => const BookDetailsView())
    ],
  );
}
