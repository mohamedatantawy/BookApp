import 'package:go_router/go_router.dart';
import 'package:product/Features/Home/presentation/Views/BookDetailView.dart';
import 'package:product/Features/Home/presentation/Views/HomeView.dart';
import 'package:product/Features/Search/presentation/Views/serachView.dart';
import 'package:product/Features/Splash/data/presentation/View/splashView.dart';
import 'package:product/main.dart';

abstract class Gorouter {
  static const kHomeView = '/HomeView';
    static const kBookDetailView = '/BookDetailView';
    static const ksearchView = '/searchView';

// GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splashview(),
      ),
      GoRoute(
        path:kHomeView,
        builder: (context, state) => const Homeview(),
      ),
      GoRoute(
        path:ksearchView,
        builder: (context, state) => const Serachview(),
      ),
      GoRoute(
        path:kBookDetailView,
        builder: (context, state) => const Bookdetailview(),
      ),
    ],
  );
}
