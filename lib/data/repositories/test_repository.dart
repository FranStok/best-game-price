
import 'package:arquitectura/core/service_locator/service_locator.dart';
import 'package:arquitectura/data/services/test_service.dart';
import 'package:arquitectura/domain/repositories/test_repository.dart';
import 'package:arquitectura/domain/responses/test_response.dart';
import 'package:arquitectura/main.dart';
import 'package:dio/dio.dart';

class TestRepositoryImp implements TestRepository {
  final TestService _testService;

  TestRepositoryImp({required TestService testService}) : _testService = testService;
  @override
  Future<TestResponse> test() async {
    try {

      return (await _testService.getTasks()).data;
    } on DioException catch (e) {
      print(e.type);
      return const TestResponse(url: "dwada");
    }
  }
}
