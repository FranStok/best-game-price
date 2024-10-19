part of '../../main.dart';

final GoRouter _router = GoRouter(
    initialLocation: AppRoutes.home.path,
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    routes: [
      GoRoute(
        path: AppRoutes.home.path,
        builder: (context, state) {
          return const MyHomePage(title: 'Flutter Demo Home Page');
        },
      ),
      GoRoute(
        path: AppRoutes.test.path,
        builder: (context, state) {
          return Container(color: Colors.red, width: 500, height: 500);
        },
      ),
]);


