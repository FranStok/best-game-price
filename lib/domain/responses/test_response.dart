import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'test_response.freezed.dart';
// optional: Since our TestResponse class is serializable, we must add this line.
// But if TestResponse was not serializable, we could skip it.
part 'test_response.g.dart';

@freezed
class TestResponse with _$TestResponse {
  const factory TestResponse({
    required String url,
  }) = _TestResponse;

  factory TestResponse.fromJson(Map<String, Object?> json)
      => _$TestResponseFromJson(json);
}