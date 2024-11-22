import 'package:arquitectura/core/util/stores.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_price.freezed.dart';
part 'store_price.g.dart';

@freezed
class StorePrice with _$StorePrice {
  factory StorePrice({
    required final double price,
    @JsonKey(fromJson: StorePrice.readEnum)
    required final StoreEnum storeId,
  }) = _StorePrice;

  StorePrice._();

  static StoreEnum readEnum(int valor) {

    switch (valor) {
      case 1:
        return StoreEnum.epic;
      case 2:
        return StoreEnum.microsoft;
      case 3:
        return StoreEnum.play;
      default:
        return StoreEnum.steam;
    }
  }

  factory StorePrice.fromJson(Map<String, dynamic> json) =>
      _$StorePriceFromJson(json);
}