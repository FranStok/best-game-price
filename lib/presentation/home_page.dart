import 'package:arquitectura/presentation/games_cubit/games_cubit.dart';
import 'package:arquitectura/presentation/home_page_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GamesCubit(),
      child: BlocBuilder<GamesCubit, GamesState>(
        builder: (context, state) {
          if(state.games==null) return CircularProgressIndicator();
          return HomePageContent(games: state.games!,);
        },
      ),
    );
  }
}
