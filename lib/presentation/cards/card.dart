import 'dart:math';

import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/themes/app_theme.dart';
import 'package:arquitectura/core/util/stores.dart';
import 'package:arquitectura/domain/models/game.dart';
import 'package:arquitectura/domain/models/store_price.dart';
import 'package:flutter/material.dart';

class GameCard extends StatefulWidget {
  const GameCard({super.key, required this.game});

  final Game game;

  @override
  State<GameCard> createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  StorePrice getCheapestPrice() {
    return widget.game.gameStores
        .reduce((current, next) => current.price < next.price ? current : next);
  }

int priceSteam=0;
@override void initState() {
    super.initState();

    getPrice(widget.game.name).then((price){
      setState(() {
        priceSteam=price;
      });
    });
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
                
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  child: Image.network(
                    "https://corsproxy.io/?${widget.game.image!}",
                    errorBuilder: (context, error, stackTrace) => const Center(child: Text("La imagen no cargo correctamente")),
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
                      Text(widget.game.name,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.white)),
                      const SizedBox(height: 8),
                      Column(
                          children: widget.game.gameGenres
                              .map((item) => Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                                  255, 136, 134, 134)
                                              .withOpacity(0.2),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6))),
                                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
                                      child: Center(
                                        child: Text(
                                          item.genre!,
                                          maxLines: 1,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall!
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                              ))
                              .toList()),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _GameInfo(
                            game: widget.game,
                            index: 0,
                          ),
                          const SizedBox(width: 20),
                          _GameInfo(
                            game: widget.game,
                            index: 1,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _GameInfo(
                            game: widget.game,
                            index: 2,
                          ),
                          const SizedBox(width: 20),
                          // _GameInfo(
                          //   game: widget.game,
                          //   index: 3,
                          // ),
                          Row(
                            children: [
                              Image.asset(
                                Stores.getStore(
                                        StoreEnum.steam)
                                    .image,
                                height: 20,
                                width: 20,
                              ),
                              Text(
                              "  \$$priceSteam",
                              style: Theme.of(context).textTheme.labelMedium,
                                                      ),
                            ],
                          ),
                          //  Text(
                          // "  \$${(widget.game.gameStores[2].price * (Random().nextInt(1) + 0.5)).toStringAsFixed(2)}",
                          // style: Theme.of(context).textTheme.labelMedium,
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

class _GameInfo extends StatefulWidget {
  const _GameInfo({
    super.key,
    required this.game,
    required this.index,
  });

  final Game game;
  final int index;

  @override
  State<_GameInfo> createState() => _GameInfoState();
}

class _GameInfoState extends State<_GameInfo> {
  int steamPrice=0;

  @override
  Widget build(BuildContext context) {
    getPrice(widget.game.name).then((price){
      setState(() {
        steamPrice=price;
      });
    });
    return Row(children: [
      Image.asset(
        Stores.getStore(widget.game.gameStores[widget.index].store).image,
        height: 20,
        width: 20,
      ),
      Text(
        "  \$${widget.game.gameStores[widget.index].price}",
        style: Theme.of(context).textTheme.labelMedium,
      ),
    ]);
  }

}

  Future <int> getPrice (String name) async {
        final response = await ServiceLocator().steamService.getGames();
        final filteredGameList = response.applist.apps.where((x) => x.name.toLowerCase().contains(name.toLowerCase())).toList();
        final limitedGameList = filteredGameList.getRange(0, (filteredGameList.length <= 1) ? filteredGameList.length : 1).toList();
        final idsString = limitedGameList.map((item) => item.appid).join(',');
        final gamesDetail = await ServiceLocator().steamService.getGameDetail(idsString);
        for (var game in limitedGameList) {
          print(game.appid);
          print(game.name);
          if (gamesDetail.response.data['${game.appid}']['data'] != null && gamesDetail.response.data['${game.appid}']['data'].length > 0) {
            game.final_price = gamesDetail.response.data['${game.appid}']['data']['price_overview']['final'];
            return game.final_price;
          }
        }
        return 0;
  }