import 'package:arquitectura/core/apis/dio/http_future.dart';
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/core/util/stores.dart';
import 'package:arquitectura/domain/models/game.dart';
import 'package:arquitectura/domain/responses/custom_game_response.dart';
import 'package:arquitectura/presentation/cards/card.dart';
import 'package:arquitectura/presentation/games_cubit/games_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  void apiTest() async {
    final response =
        await ServiceLocator().customGameStoresRepository.getGames();
    response.onResult(left: (e) {
      print(e.type);
    }, right: (response) {
      print(response.data.games.first);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        leading: Image.asset("images/logo.png"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        apiTest();
      }),
      body: BlocProvider(
        create: (context) => GamesCubit(),
        child: BlocBuilder<GamesCubit, GamesState>(
          builder: (context, state) {
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [],
              ),
            );
          },
        ),
      ),
    );
  }
}
