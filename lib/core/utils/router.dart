import 'package:bookly_app_test/features/home/pressentation/view/home_view.dart';
import 'package:bookly_app_test/features/splash/pressentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeViewPath = '/home_view';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: homeViewPath, builder: (context, state) => const HomeView())
    ],
  );
}
