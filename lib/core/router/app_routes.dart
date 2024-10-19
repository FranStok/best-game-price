class AppRoutes {
  static const AppRoute home = AppRoute(path: "/home", name: "home");
  static const AppRoute test = AppRoute(path: "/test", name: "test");
}

class AppRoute {
  const AppRoute({required this.path, required this.name});
  final String path;
  final String name;
}
