import 'package:beachy/features/home/presentation/views/home_page.dart';
import 'package:go_router/go_router.dart';

abstract class Routers {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
