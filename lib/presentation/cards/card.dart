import 'package:arquitectura/core/themes/app_theme.dart';
import 'package:arquitectura/core/util/stores.dart';
import 'package:arquitectura/domain/models/game.dart';
import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.game});

  final Game game;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355,
      width: 300,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 1)
          ]),
      child: Column(
        children: [
          Text(game.name, style: Theme.of(context).textTheme.labelLarge!),
          const SizedBox(height: 8),
          Image.network(
            game.image,
            height: 200,
          ),
          const SizedBox(height: 8),
          const Divider(height: 1),
          const SizedBox(height: 8),
          Expanded(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 36),
                child: Column(
                  children: [
                    Row(
                      children: [
                        _GameInfo(
                          game: game,
                          index: 0,
                        ),
                        const Spacer(),
                        _GameInfo(
                          game: game,
                          index: 1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        _GameInfo(
                          game: game,
                          index: 2,
                        ),
                        const Spacer(),
                        _GameInfo(
                          game: game,
                          index: 3,
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Text("MEJOR PRECIOO", style: Theme.of(context).textTheme.labelLarge)
        ],
      ),
    );
  }
}

class _GameInfo extends StatelessWidget {
  const _GameInfo({
    super.key,
    required this.game,
    required this.index,
  });

  final Game game;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
        Stores.getStore(game.storePrices[index].store).image,
        height: 20,
        width: 20,
      ),
      Text(
        "  \$${game.storePrices[index].price}",
        style: Theme.of(context).textTheme.labelMedium,
      )
    ]);
  }
}
