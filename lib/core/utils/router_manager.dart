import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/book_details_view.dart';
import '../../features/home/presentation/view/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const homeViewPath = '/homeView';
  static const bookDetailsPath = '/bookDetails';
  static const searchPath = '/search';

  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: bookDetailsPath,
          builder: (context, state) => const BookDetailsView()
      ),
      GoRoute(
          path: searchPath,
          builder: (context, state) => const SearchView()
      )
    ],
  );
}
