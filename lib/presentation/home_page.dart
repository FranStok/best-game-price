import 'package:arquitectura/core/router/app_routes.dart';
import 'package:arquitectura/main.dart';
import 'package:arquitectura/presentation/cards/card.dart';
import 'package:arquitectura/presentation/games_cubit/games_cubit.dart';
import 'package:arquitectura/presentation/home_page_content.dart';
import 'package:arquitectura/presentation/login/login_cubit/session_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSearching = false;
    return BlocProvider(
      create: (context) => GamesCubit(),
      child: BlocBuilder<GamesCubit, GamesState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            bottomNavigationBar: Container(
              height: 50,
              color: Theme.of(context).colorScheme.primary,
              child: const Center(
                child: Text("Copyrights 2024"),
              ),
            ),
            appBar: AppBar(
              iconTheme:
                  IconThemeData(color: Theme.of(context).colorScheme.onSurface),
              backgroundColor: Theme.of(context).colorScheme.primary,
              actions: [
                StatefulBuilder(builder: (context, setState) {
                  if (isSearching) {
                    return SizedBox(
                        width: 300,
                        height: 35,
                        child: SearchBar(
                          leading: const Icon(Icons.search_outlined),
                          onChanged: (value) {
                            (value.isEmpty)
                                ? BlocProvider.of<GamesCubit>(context)
                                    .changeSelectedSearch(null)
                                : BlocProvider.of<GamesCubit>(context)
                                    .changeSelectedSearch(value);
                          },
                          trailing: [
                            IconButton(
                                onPressed: () {
                                  isSearching = false;
                                  setState(() {});
                                },
                                icon: const Icon(Icons.close))
                          ],
                          hintText: "Buscar juego...",
                        ));
                  }
                  return IconButton(
                      onPressed: () {
                        isSearching = true;
                        setState(() {});
                      },
                      icon: const Icon(Icons.search_outlined));
                }),
                const SizedBox(width: 4),
                BlocBuilder<SessionCubit, SessionState>(
                  builder: (context, state) {
                    return state.userCredentials?.user == null
                        ? ElevatedButton(
                            style: ButtonStyle(
                                shape: const WidgetStatePropertyAll<
                                        OutlinedBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)))),
                                backgroundColor: WidgetStatePropertyAll<Color>(
                                    Theme.of(context).colorScheme.surface)),
                            onPressed: () {
                              context.push(AppRoutes.login.path);
                            },
                            child: Text(
                              "Iniciar sesión",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                            ))
                        : Row(
                            children: [
                              const Icon(Icons.person),
                              const SizedBox(width: 8),
                              Text("${state.userCredentials!.user!.email}"),
                              const SizedBox(width: 8),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: VerticalDivider(),
                              ),
                              const SizedBox(width: 8),
                              TextButton(
                                style: const ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                                onPressed: () {
                                  BlocProvider.of<SessionCubit>(context)
                                      .logOut();
                                },
                                child: Text("Cerrar sesión",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSurface)),
                              )
                            ],
                          );
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
            body: (state.games == null)
                ? const Center(
                    child: SizedBox(
                        height: 60,
                        width: 60,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        )))
                : Padding(
                    padding: const EdgeInsets.all(16),
                    child: HomePageContent(
                      games: state.games!,
                      selectedGenre: state.selectedGenre,
                      search: state.search,
                    ),
                  ),
            drawer: _Drawer(state: state),
          );
        },
      ),
    );
  }
}

class _Drawer extends StatelessWidget {
  const _Drawer({
    super.key,
    required this.state,
  });

  final GamesState state;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: const EdgeInsets.all(16), children: [
        Text(
          'Generos',
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
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
        else ...[
          ListTile(
            contentPadding: const EdgeInsets.only(left: 8),
            title:
                Text("Todos", style: Theme.of(context).textTheme.labelMedium!),
            onTap: () {
              BlocProvider.of<GamesCubit>(context).changeSelectedGenre(null);
              Scaffold.of(context).closeDrawer();
            },
          ),
          ...state.genres!.map((item) => ListTile(
                contentPadding: const EdgeInsets.only(left: 8),
                title: Text(item.genre!,
                    style: Theme.of(context).textTheme.labelMedium!),
                onTap: () {
                  BlocProvider.of<GamesCubit>(context)
                      .changeSelectedGenre(item);
                  Scaffold.of(context).closeDrawer();
                },
              ))
        ]
      ]),
    );
  }
}
