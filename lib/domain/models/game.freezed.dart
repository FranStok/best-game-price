// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  int get gameId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<StorePrice> get gameStores => throw _privateConstructorUsedError;
  List<Genre> get gameGenres => throw _privateConstructorUsedError;

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {int gameId,
      String? image,
      String name,
      List<StorePrice> gameStores,
      List<Genre> gameGenres});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? image = freezed,
    Object? name = null,
    Object? gameStores = null,
    Object? gameGenres = null,
  }) {
    return _then(_value.copyWith(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gameStores: null == gameStores
          ? _value.gameStores
          : gameStores // ignore: cast_nullable_to_non_nullable
              as List<StorePrice>,
      gameGenres: null == gameGenres
          ? _value.gameGenres
          : gameGenres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int gameId,
      String? image,
      String name,
      List<StorePrice> gameStores,
      List<Genre> gameGenres});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? image = freezed,
    Object? name = null,
    Object? gameStores = null,
    Object? gameGenres = null,
  }) {
    return _then(_$GameImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gameStores: null == gameStores
          ? _value._gameStores
          : gameStores // ignore: cast_nullable_to_non_nullable
              as List<StorePrice>,
      gameGenres: null == gameGenres
          ? _value._gameGenres
          : gameGenres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  _$GameImpl(
      {required this.gameId,
      this.image,
      required this.name,
      required final List<StorePrice> gameStores,
      required final List<Genre> gameGenres})
      : _gameStores = gameStores,
        _gameGenres = gameGenres;

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final int gameId;
  @override
  final String? image;
  @override
  final String name;
  final List<StorePrice> _gameStores;
  @override
  List<StorePrice> get gameStores {
    if (_gameStores is EqualUnmodifiableListView) return _gameStores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameStores);
  }

  final List<Genre> _gameGenres;
  @override
  List<Genre> get gameGenres {
    if (_gameGenres is EqualUnmodifiableListView) return _gameGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameGenres);
  }

  @override
  String toString() {
    return 'Game(gameId: $gameId, image: $image, name: $name, gameStores: $gameStores, gameGenres: $gameGenres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._gameStores, _gameStores) &&
            const DeepCollectionEquality()
                .equals(other._gameGenres, _gameGenres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameId,
      image,
      name,
      const DeepCollectionEquality().hash(_gameStores),
      const DeepCollectionEquality().hash(_gameGenres));

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  factory _Game(
      {required final int gameId,
      final String? image,
      required final String name,
      required final List<StorePrice> gameStores,
      required final List<Genre> gameGenres}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  int get gameId;
  @override
  String? get image;
  @override
  String get name;
  @override
  List<StorePrice> get gameStores;
  @override
  List<Genre> get gameGenres;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
