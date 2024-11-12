import 'package:arquitectura/core/apis/dio/http_future.dart';
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/core/util/stores.dart';
import 'package:arquitectura/domain/models/game.dart';
import 'package:arquitectura/domain/responses/test_response.dart';
import 'package:arquitectura/presentation/cards/card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  void apiTest() async {
    final response = await ServiceLocator().testRepository.test();
    response.onResult(left: (e) {
      print(e.type);
    }, right: (response) {
      print(response.data);
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
            GameCard(
              game: Game(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
                  name: "Dead by Daylight",
                  storePrices: [
                    StorePrice(price: 5, store: StoreEnum.steam),
                    StorePrice(price: 10, store: StoreEnum.epic),
                    StorePrice(price: 11, store: StoreEnum.microsoft),
                    StorePrice(price: 5, store: StoreEnum.play)
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
