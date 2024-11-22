import 'package:arquitectura/domain/models/genre.dart';
import 'package:arquitectura/domain/models/store_price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  factory Game(
      {required final int gameId,
      final String? image,
      required final String name,
      required final List<StorePrice> gameStores,
      required final List<Genre> gameGenres
      }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}