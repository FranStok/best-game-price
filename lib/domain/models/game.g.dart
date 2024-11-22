// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      gameId: (json['gameId'] as num).toInt(),
      image: json['image'] as String?,
      name: json['name'] as String,
      gameStores: (json['gameStores'] as List<dynamic>)
          .map((e) => StorePrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameGenres: (json['gameGenres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'image': instance.image,
      'name': instance.name,
      'gameStores': instance.gameStores,
      'gameGenres': instance.gameGenres,
    };
