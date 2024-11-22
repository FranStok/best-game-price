import 'dart:async';
import 'package:arquitectura/core/apis/dio/http_future.dart';
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/core/util/stores.dart';
import 'package:arquitectura/domain/models/game.dart';
import 'package:arquitectura/domain/models/store_price.dart';
import 'package:arquitectura/domain/responses/custom_game_response.dart';
import 'package:arquitectura/presentation/cards/card.dart';
import 'package:arquitectura/presentation/games_cubit/games_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({
    super.key,
    required this.games,
  });

  @override
  State<HomePageContent> createState() => _HomePageContentState();

  final List<Game> games;
}

class _HomePageContentState extends State<HomePageContent> {
  final PageController _pageController = PageController();
  int _imagenActual = 0;
  Timer? _timer;
  late List<Game> _games;
  final bool _isHovering = false;

  @override
  void initState() {
    _games = widget.games;
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 5), _periodicMove);
  }

  void _periodicMove(Timer timer) {
    if (!_isHovering) {
      if (_imagenActual < _games.length - 1) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  void _scrollLeft() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 5), _periodicMove);
    if (_imagenActual == 0) {
      // Si estamos en la primera página, ir a la última
      _pageController.jumpToPage(_games.length - 1);
      setState(() {
        _imagenActual = _games.length - 1;
      });
    } else {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollRight() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 5), _periodicMove);
    if (_imagenActual == _games.length - 1) {
      // Si estamos en la última página, volver a la primera
      _pageController.jumpToPage(0);
      setState(() {
        _imagenActual = 0;
      });
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Text('DESTACADOS Y RECOMENDADOS',
              style: Theme.of(context).textTheme.labelMedium!),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _scrollLeft,
                color: Colors.white,
                icon: const Icon(Icons.arrow_back_ios_outlined, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 20),
                child: SizedBox(
                  height: 355,
                  width: 700,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _games.length,
                    onPageChanged: (index) {
                      setState(() {
                        _imagenActual = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Center(
                        child: GameCard(game: _games[index]),
                      );
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: _scrollRight,
                color: Colors.white,
                icon: const Icon(Icons.arrow_forward_ios, size: 30),
              ),
            ],
          ),
          SizedBox(
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _games.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: _imagenActual == index ? 12 : 8,
                  height: _imagenActual == index ? 12 : 8,
                  decoration: BoxDecoration(
                    color: _imagenActual == index ? Colors.white : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text('TODOS LOS GENEROS',
              style: Theme.of(context).textTheme.labelMedium!),
          const SizedBox(height: 20),
          //CARDS POR GENERO
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 16,
            children: _games.map((game) => _TinyCard(game: game)).toList(),
          )
        ],
      ),
    );
  }
}

class _TinyCard extends StatelessWidget {
  const _TinyCard({super.key, required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    StorePrice getCheapestPrice() {
      return game.gameStores.reduce(
        (current, next) => current.price < next.price ? current : next,
      );
    }

    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              game.image!,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) => const SizedBox(
                height: 250,
                width: 450,
              ),
              height: 250,
              width: 450,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(game.name.toUpperCase()),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurface,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Text(
                  "\$${getCheapestPrice().price}",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Image.asset(
                  Stores.getStore(game.gameStores[0].store).image,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  "\$${game.gameStores[0].price}",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(width: 30),
                Image.asset(
                  Stores.getStore(game.gameStores[1].store).image,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  "\$${game.gameStores[1].price}",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(width: 30),
                Image.asset(
                  Stores.getStore(game.gameStores[2].store).image,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  "\$${game.gameStores[2].price}",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(width: 30),
                // Image.asset(
                //   Stores.getStore(game.gameStores[3].store).image,
                //   height: 20,
                //   width: 20,
                // ),
                // const SizedBox(width: 12),
                // Text(
                //   "\$${game.gameStores[3].price}",
                //   style: Theme.of(context).textTheme.labelMedium,
                // ),
              ]),
            ),
            
          ],
        ),
      ),
    );
  }
}
