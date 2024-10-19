// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestResponse _$TestResponseFromJson(Map<String, dynamic> json) {
  return _TestResponse.fromJson(json);
}

/// @nodoc
mixin _$TestResponse {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this TestResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestResponseCopyWith<TestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResponseCopyWith<$Res> {
  factory $TestResponseCopyWith(
          TestResponse value, $Res Function(TestResponse) then) =
      _$TestResponseCopyWithImpl<$Res, TestResponse>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$TestResponseCopyWithImpl<$Res, $Val extends TestResponse>
    implements $TestResponseCopyWith<$Res> {
  _$TestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestResponseImplCopyWith<$Res>
    implements $TestResponseCopyWith<$Res> {
  factory _$$TestResponseImplCopyWith(
          _$TestResponseImpl value, $Res Function(_$TestResponseImpl) then) =
      __$$TestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$TestResponseImplCopyWithImpl<$Res>
    extends _$TestResponseCopyWithImpl<$Res, _$TestResponseImpl>
    implements _$$TestResponseImplCopyWith<$Res> {
  __$$TestResponseImplCopyWithImpl(
      _$TestResponseImpl _value, $Res Function(_$TestResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$TestResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestResponseImpl implements _TestResponse {
  const _$TestResponseImpl({required this.url});

  factory _$TestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestResponseImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'TestResponse(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestResponseImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of TestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestResponseImplCopyWith<_$TestResponseImpl> get copyWith =>
      __$$TestResponseImplCopyWithImpl<_$TestResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestResponseImplToJson(
      this,
    );
  }
}

abstract class _TestResponse implements TestResponse {
  const factory _TestResponse({required final String url}) = _$TestResponseImpl;

  factory _TestResponse.fromJson(Map<String, dynamic> json) =
      _$TestResponseImpl.fromJson;

  @override
  String get url;

  /// Create a copy of TestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestResponseImplCopyWith<_$TestResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
