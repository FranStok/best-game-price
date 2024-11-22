import 'package:dio/dio.dart';

class DioInit {
  static DioInit? _instance;

  factory DioInit() {
    _instance ??= DioInit._internal(Dio(BaseOptions(contentType: 'application/json')));
    return _instance!;
  }

  static Dio get dio => _instance?._dioIntance ?? DioInit()._dioIntance;

  final Dio _dioIntance;

  DioInit._internal(this._dioIntance);
}