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
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Theme.of(context).colorScheme.onSurface),
                backgroundColor: Theme.of(context).colorScheme.primary,
                flexibleSpace: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: Theme.of(context).textTheme.labelMedium!,
                        ),
                      ),
                    )
                  ],
                )),
            body: (state.games == null)
                ? const Center(
                    child: SizedBox(
                        height: 60,
                        width: 60,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        )))
                : HomePageContent(games: state.games!),
            drawer: Drawer(
              child: ListView(padding: EdgeInsets.all(16), children: [
                Text(
                  'Generos',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface),
                ),
                if (state.isLoading)
                  const SizedBox(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ))
                else
                  ...state.genres!.map((item) => ListTile(
                    contentPadding: const EdgeInsets.only(left: 8),
                        title: Text(item.genre!,
                            style: Theme.of(context).textTheme.labelMedium!),
                        onTap: () {},
                      ))
              ]),
            ),
          );
        },
      ),
    );
  }
}
