
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/core/util/either.dart';
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
  Future<Either<TestResponse?>>test() async{
    Either<TestResponse> request=Either(request: _testService.getTasks);
    await request.makeRequest();
    return request;
  }
}

