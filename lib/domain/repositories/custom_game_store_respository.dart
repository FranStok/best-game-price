
import 'package:arquitectura/core/apis/dio/http_future.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/domain/responses/custom_game_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

abstract class CustomGameStoresRepository {
 Future<HttpFuture<CustomGameResponse>> getGames();
}