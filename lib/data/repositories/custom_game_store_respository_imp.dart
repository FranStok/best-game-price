
import 'dart:io';

import 'package:arquitectura/core/apis/dio/http_future.dart';
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/data/services/custom_game_stores_service.dart';
import 'package:arquitectura/domain/repositories/custom_game_store_respository.dart';
import 'package:arquitectura/domain/responses/custom_game_response.dart';
import 'package:arquitectura/main.dart';
import 'package:dio/dio.dart';

class CustomGameStoresRepositoryImp implements CustomGameStoresRepository {
  final CustomGameStoresService _customGameStoresService;

  CustomGameStoresRepositoryImp({required CustomGameStoresService customGameStoresService})
      : _customGameStoresService = customGameStoresService;
  @override
  Future<HttpFuture<CustomGameResponse>> getGames() async{
    try {
      final result=await _customGameStoresService.getGamesFromStores();
      return HttpFutureSuccess<CustomGameResponse>(result);
    } on DioException catch (e) {
      return HttpFutureFailure<CustomGameResponse>(e);
    }
  }
}

