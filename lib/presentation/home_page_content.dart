import 'dart:async';
import 'package:arquitectura/core/apis/dio/http_future.dart';
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/core/util/stores.dart';
import 'package:arquitectura/domain/models/game.dart';
import 'package:arquitectura/domain/models/genre.dart';
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
    required this.games,  this.selectedGenre,
  });

  @override
  State<HomePageContent> createState() => _HomePageContentState();

  final List<Game> games;
  final Genre? selectedGenre;
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
    _pageController.previousPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 5), _periodicMove);
    _pageController.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
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
                    top: 10, left: 10, right: 10, bottom: 20),
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
                  height: _imagenActual == index ? 12 :8,
                  decoration: BoxDecoration(
                    color: _imagenActual == index ? Colors.white : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(
              (widget.selectedGenre != null)
                  ? "JUEGOS DE ${widget.selectedGenre!.genre}"
                  : 'TODOS LOS GENEROS',
              style: Theme.of(context).textTheme.labelMedium!),
          const SizedBox(height: 30),
          //CARDS POR GENERO
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 16,
            children: _games
                .where((game) =>
                    widget.selectedGenre == null ||
                    game.gameGenres.contains(widget.selectedGenre))
                .map((game) => _TinyCard(game: game))
                .toList(),
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
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Image.network(
            game.image!,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) => const SizedBox(
              height: 250,
              width: 450,
              child:
                  Center(child: Text("La imagen no cargo correctamente")),
            ),
            height: 250,
            width: 450,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(game.name),
          ),
        ],
      ),
    );
  }
}
