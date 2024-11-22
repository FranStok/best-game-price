import 'dart:async';
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

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _imagenActual = 0;
  Timer? _timer;
  final bool _isHovering = false;
  final List<Game> _games = [
    Game(
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
      name: "Dead by Daylight",
      storePrices: [
        StorePrice(price: 5, store: StoreEnum.steam),
        StorePrice(price: 10, store: StoreEnum.epic),
        StorePrice(price: 11, store: StoreEnum.microsoft),
        StorePrice(price: 5, store: StoreEnum.play),
      ],
    ),
    Game(
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNciuS2r-cxd6_ONvVUhIUrJLp_aTS2KhHpg&s",
      name: "Resident Evil",
      storePrices: [
        StorePrice(price: 15, store: StoreEnum.steam),
        StorePrice(price: 20, store: StoreEnum.epic),
        StorePrice(price: 11, store: StoreEnum.microsoft),
        StorePrice(price: 5, store: StoreEnum.play),
      ],
    ),
  ];

  void apiTest() async {
    final response = await ServiceLocator().testRepository.test();
    response.onResult(left: (e) {
      print(e.type);
    }, right: (response) {
      print(response.data);
    });
  }

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
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
    });
  }

  void _scrollLeft() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.onSurface),
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
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Theme.of(context).colorScheme.onSurface,
              // ),
              child: Text(
                'Generos',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Generos'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
                    top: 80, left: 20, right: 20, bottom: 20),
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
          Row(
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
          )
        ],
      ),
    );
  }
}
