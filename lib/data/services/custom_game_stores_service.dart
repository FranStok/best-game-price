import 'package:arquitectura/domain/responses/custom_game_response.dart';
import 'package:arquitectura/domain/responses/genre_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'custom_game_stores_service.g.dart';

@RestApi()
abstract class CustomGameStoresService {
  factory CustomGameStoresService(Dio dio, {String? baseUrl}) = _CustomGameStoresService;

  @GET('https://game-store-api-eirs.onrender.com/api/Game')
  Future<HttpResponse<CustomGameResponse>> getGamesFromStores();
  @GET('https://game-store-api-eirs.onrender.com/api/Genre')
  Future<HttpResponse<GenreResponse>> getGenres();
}
