// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_game_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomGameResponseImpl _$$CustomGameResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomGameResponseImpl(
      games: (json['games'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomGameResponseImplToJson(
        _$CustomGameResponseImpl instance) =>
    <String, dynamic>{
      'games': instance.games,
    };
