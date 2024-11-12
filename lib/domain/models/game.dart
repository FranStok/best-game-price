import 'package:arquitectura/core/util/stores.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {

  factory Game({
    required final String image,
    required final String name,
    required final List<StorePrice> storePrices
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}

@freezed
class StorePrice with _$StorePrice {

  factory StorePrice({
    required double price, required StoreEnum store
  }) = _StorePrice;

  factory StorePrice.fromJson(Map<String, dynamic> json) => _$StorePriceFromJson(json);
}



