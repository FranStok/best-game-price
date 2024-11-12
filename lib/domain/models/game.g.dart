// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      image: json['image'] as String,
      name: json['name'] as String,
      storePrices: (json['storePrices'] as List<dynamic>)
          .map((e) => StorePrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'storePrices': instance.storePrices,
    };

_$StorePriceImpl _$$StorePriceImplFromJson(Map<String, dynamic> json) =>
    _$StorePriceImpl(
      price: (json['price'] as num).toDouble(),
      store: $enumDecode(_$StoreEnumEnumMap, json['store']),
    );

Map<String, dynamic> _$$StorePriceImplToJson(_$StorePriceImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'store': _$StoreEnumEnumMap[instance.store]!,
    };

const _$StoreEnumEnumMap = {
  StoreEnum.steam: 'steam',
  StoreEnum.epic: 'epic',
  StoreEnum.microsoft: 'microsoft',
  StoreEnum.play: 'play',
};
