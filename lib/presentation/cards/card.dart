import 'package:arquitectura/core/themes/app_theme.dart';
import 'package:arquitectura/core/util/stores.dart';
import 'package:arquitectura/domain/models/game.dart';
import 'package:arquitectura/domain/models/store_price.dart';
import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.game});

  final Game game;

  StorePrice getCheapestPrice() {
    return game.gameStores
        .reduce((current, next) => current.price < next.price ? current : next);
  }

  @override
  Widget build(BuildContext context) {
    final cheapestPrice = getCheapestPrice();

    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 355,
          width: 700,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 15,
                    spreadRadius: 3)
              ]),
          child: Row(
            children: [
              Container(
                height: 355,
                width: 500,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  child: Image.network(
                    "https://corsproxy.io/?${game.image!}",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 16),
                      Text(game.name,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.white)),
                      const SizedBox(height: 8),
                      Wrap(
                          spacing: 12,
                          runSpacing: 8,
                          children: game.gameGenres
                              .map((item) => Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                                255, 136, 134, 134)
                                            .withOpacity(0.2),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6))),
                                    width: 80,
                                    padding: const EdgeInsets.all(8),
                                    child: Center(
                                      child: Text(
                                        item.genre!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ))
                              .toList()),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _GameInfo(
                            game: game,
                            index: 0,
                          ),
                          const SizedBox(width: 20),
                          _GameInfo(
                            game: game,
                            index: 1,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _GameInfo(
                            game: game,
                            index: 2,
                          ),
                          const SizedBox(width: 20),
                          _GameInfo(
                            game: game,
                            index: 3,
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 8),
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                    ),
                                  ]),
                              child: Text(
                                "Mejor precio \$${cheapestPrice.price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
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
    return SizedBox();
    // return Row(children: [
    //   Image.asset(
    //     Stores.getStore(game.gameStores[index].store).image,
    //     height: 20,
    //     width: 20,
    //   ),
    //   Text(
    //     "  \$${game.gameStores[index].price}",
    //     style: Theme.of(context).textTheme.labelMedium,
    //   )
    // ]);
  }
}
