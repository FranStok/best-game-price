
import 'package:arquitectura/core/util/result.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

typedef HttpFuture<T>=Result<HttpResponse<T>,DioException>;
typedef HttpFutureSuccess<T>=Success<HttpResponse<T>,DioException>;
typedef HttpFutureFailure<T>=Failure<HttpResponse<T>,DioException>;