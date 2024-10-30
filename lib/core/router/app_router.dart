part of '../../main.dart';

final GoRouter _router = GoRouter(
    initialLocation: AppRoutes.login.path,
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    routes: [
      GoRoute(
        path: AppRoutes.home.path,
        redirect: (context, state) {
          if (BlocProvider.of<SessionCubit>(context)
                  .state
                  .userCredentials ==
              null) {
            return AppRoutes.login.path;
          }
          return null;
        },
        builder: (context, state) {
          return const HomePage(title: 'Flutter Demo Home Page');
        },
      ),
      GoRoute(
        path: AppRoutes.login.path,
        redirect: (context, state) {
          if (BlocProvider.of<SessionCubit>(context)
                  .state
                  .userCredentials !=
              null) {
            return AppRoutes.home.path;
          }
          return null;
        },
        builder: (context, state) {
          return const LoginPage();
        },
      ),
    ]);
