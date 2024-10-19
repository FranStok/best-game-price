import 'package:arquitectura/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("ERROR EN EL LINK"),
            TextButton(
                onPressed: () => context.go(AppRoutes.home.path),
                child: const Text("VOLVER A HOME"))
          ],
        ),
      ),
    );
  }
}
