class AppRoutes {
  static const AppRoute home = AppRoute(path: "/home", name: "home");
  static const AppRoute login = AppRoute(path: "/login", name: "login");
}

class AppRoute {
  const AppRoute({required this.path, required this.name});
  final String path;
  final String name;
}
