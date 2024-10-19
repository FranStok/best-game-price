
import 'package:arquitectura/core/util/either.dart';
import 'package:arquitectura/domain/responses/test_response.dart';
import 'package:retrofit/dio.dart';

abstract class TestRepository {
  Future<Either<TestResponse?>> test();
}