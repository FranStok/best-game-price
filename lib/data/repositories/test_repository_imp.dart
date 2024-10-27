
import 'dart:io';

import 'package:arquitectura/core/apis/dio/http_future.dart';
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/util/result.dart';
import 'package:arquitectura/data/services/test_service.dart';
import 'package:arquitectura/domain/repositories/test_repository.dart';
import 'package:arquitectura/domain/responses/test_response.dart';
import 'package:arquitectura/main.dart';
import 'package:dio/dio.dart';

class TestRepositoryImp implements TestRepository {
  final TestService _testService;

  TestRepositoryImp({required TestService testService})
      : _testService = testService;
  @override
  Future<HttpFuture<TestResponse>> test() async{
    try {
      final result=await _testService.getTasks();
      return HttpFutureSuccess<TestResponse>(result);
    } on DioException catch (e) {
      return HttpFutureFailure<TestResponse>(e);
    }
  }
}

