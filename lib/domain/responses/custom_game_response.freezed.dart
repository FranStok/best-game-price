// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_game_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomGameResponse _$CustomGameResponseFromJson(Map<String, dynamic> json) {
  return _CustomGameResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomGameResponse {
  @JsonKey(name: "games")
  List<Game> get games => throw _privateConstructorUsedError;

  /// Serializes this CustomGameResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomGameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomGameResponseCopyWith<CustomGameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomGameResponseCopyWith<$Res> {
  factory $CustomGameResponseCopyWith(
          CustomGameResponse value, $Res Function(CustomGameResponse) then) =
      _$CustomGameResponseCopyWithImpl<$Res, CustomGameResponse>;
  @useResult
  $Res call({@JsonKey(name: "games") List<Game> games});
}

/// @nodoc
class _$CustomGameResponseCopyWithImpl<$Res, $Val extends CustomGameResponse>
    implements $CustomGameResponseCopyWith<$Res> {
  _$CustomGameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomGameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_value.copyWith(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomGameResponseImplCopyWith<$Res>
    implements $CustomGameResponseCopyWith<$Res> {
  factory _$$CustomGameResponseImplCopyWith(_$CustomGameResponseImpl value,
          $Res Function(_$CustomGameResponseImpl) then) =
      __$$CustomGameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "games") List<Game> games});
}

/// @nodoc
class __$$CustomGameResponseImplCopyWithImpl<$Res>
    extends _$CustomGameResponseCopyWithImpl<$Res, _$CustomGameResponseImpl>
    implements _$$CustomGameResponseImplCopyWith<$Res> {
  __$$CustomGameResponseImplCopyWithImpl(_$CustomGameResponseImpl _value,
      $Res Function(_$CustomGameResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomGameResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
  }) {
    return _then(_$CustomGameResponseImpl(
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomGameResponseImpl implements _CustomGameResponse {
  const _$CustomGameResponseImpl(
      {@JsonKey(name: "games") required final List<Game> games})
      : _games = games;

  factory _$CustomGameResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomGameResponseImplFromJson(json);

  final List<Game> _games;
  @override
  @JsonKey(name: "games")
  List<Game> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  String toString() {
    return 'CustomGameResponse(games: $games)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomGameResponseImpl &&
            const DeepCollectionEquality().equals(other._games, _games));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_games));

  /// Create a copy of CustomGameResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomGameResponseImplCopyWith<_$CustomGameResponseImpl> get copyWith =>
      __$$CustomGameResponseImplCopyWithImpl<_$CustomGameResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomGameResponseImplToJson(
      this,
    );
  }
}

abstract class _CustomGameResponse implements CustomGameResponse {
  const factory _CustomGameResponse(
          {@JsonKey(name: "games") required final List<Game> games}) =
      _$CustomGameResponseImpl;

  factory _CustomGameResponse.fromJson(Map<String, dynamic> json) =
      _$CustomGameResponseImpl.fromJson;

  @override
  @JsonKey(name: "games")
  List<Game> get games;

  /// Create a copy of CustomGameResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomGameResponseImplCopyWith<_$CustomGameResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
