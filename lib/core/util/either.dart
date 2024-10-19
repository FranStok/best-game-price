import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class Either<R> {
  Either({required this.request});
  final Future<HttpResponse<R>> Function() request;
  R? _data;
  DioExceptionType? _error;
  Future<void> makeRequest() async {
    try {
      final result = await request();
      _data = result.data;
    } on DioException catch (e) {
      _error = e.type;
    }
  }

  void when(
      {required void Function(R data) right,
      required void Function(DioExceptionType e) left}) {
    if (_data != null) right(_data!);
    if (_error != null) left(_error!);
  }

}
