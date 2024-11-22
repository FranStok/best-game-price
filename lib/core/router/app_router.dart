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
          return const HomePage(); //TODO PONER REDIRECT DE VUELTA
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
