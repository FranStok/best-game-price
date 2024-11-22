// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StorePriceImpl _$$StorePriceImplFromJson(Map<String, dynamic> json) =>
    _$StorePriceImpl(
      price: (json['price'] as num).toDouble(),
      store: StorePrice.readEnum((json['storeId'] as num).toInt()),
    );

Map<String, dynamic> _$$StorePriceImplToJson(_$StorePriceImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'storeId': _$StoreEnumEnumMap[instance.store]!,
    };

const _$StoreEnumEnumMap = {
  StoreEnum.steam: 'steam',
  StoreEnum.epic: 'epic',
  StoreEnum.microsoft: 'microsoft',
  StoreEnum.play: 'play',
};
