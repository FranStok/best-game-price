import 'package:arquitectura/core/router/app_routes.dart';
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/themes/app_theme.dart';
import 'package:arquitectura/firebase_options.dart';
import 'package:arquitectura/presentation/error_route.dart';
import 'package:arquitectura/presentation/home_page.dart';
import 'package:arquitectura/presentation/home_page_content.dart';
import 'package:arquitectura/presentation/login/login_cubit/session_cubit.dart';
import 'package:arquitectura/presentation/login/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'core/router/app_router.dart';

void main() async {
  GoRouter.optionURLReflectsImperativeAPIs = true;

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SessionCubit(sl.authRepository),
      child: MaterialApp.router(
        title: 'Arquitectura',
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
