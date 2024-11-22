import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'steam_service.g.dart';

@RestApi()
abstract class SteamService {
  factory SteamService(Dio dio, {String baseUrl}) = _SteamService;

  @GET("https://corsproxy.io/?https://api.steampowered.com/ISteamApps/GetAppList/v2")
  Future<GameListResponse> getGames();

  @GET("https://corsproxy.io/?https://store.steampowered.com/api/featured?cc=AR")
  Future<FeaturedGamesListResponse> getFeaturedGames();

  @GET("https://corsproxy.io/?https://store.steampowered.com/api/appdetails?cc=Ar&filters=price_overview")
  Future<HttpResponse> getGameDetail(@Query('appids') String ids);
}

@JsonSerializable()
class Game {
  final String name;
  final int id;
  final int appid;
  int final_price;
  final String small_capsule_image;

  Game({required this.name, this.id = 0, this.appid = 0,  this.final_price = 0, this.small_capsule_image = ''});

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}

@JsonSerializable()
class GameListResponse {
  final Applist applist;

  GameListResponse({required this.applist});

  factory GameListResponse.fromJson(Map<String, dynamic> json) =>
      _$GameListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GameListResponseToJson(this);
}

@JsonSerializable()
class FeaturedGamesListResponse {
  final List<Game> featured_win;

  FeaturedGamesListResponse({required this.featured_win});

  factory FeaturedGamesListResponse.fromJson(Map<String, dynamic> json) =>
      _$FeaturedGamesListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FeaturedGamesListResponseToJson(this);
}

@JsonSerializable()
class Applist {
  final List<Game> apps;

  Applist({required this.apps});

  factory Applist.fromJson(Map<String, dynamic> json) => _$ApplistFromJson(json);
  Map<String, dynamic> toJson() => _$ApplistToJson(this);
}
