import 'package:arquitectura/domain/responses/test_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'test_service.g.dart';

@RestApi()
abstract class TestService {
  factory TestService(Dio dio, {String? baseUrl}) = _TestService;

  @GET('https://httpbin.org/get')
  Future<HttpResponse<TestResponse>> getTasks();
}
