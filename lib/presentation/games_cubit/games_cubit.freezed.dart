// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'games_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GamesState {
  List<Game>? get games => throw _privateConstructorUsedError;
  List<Genre>? get genres => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Genre? get selectedGenre => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game>? games, List<Genre>? genres,
            bool isLoading, Genre? selectedGenre)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Game>? games, List<Genre>? genres, bool isLoading,
            Genre? selectedGenre)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game>? games, List<Genre>? genres, bool isLoading,
            Genre? selectedGenre)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GamesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamesStateCopyWith<GamesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesStateCopyWith<$Res> {
  factory $GamesStateCopyWith(
          GamesState value, $Res Function(GamesState) then) =
      _$GamesStateCopyWithImpl<$Res, GamesState>;
  @useResult
  $Res call(
      {List<Game>? games,
      List<Genre>? genres,
      bool isLoading,
      Genre? selectedGenre});

  $GenreCopyWith<$Res>? get selectedGenre;
}

/// @nodoc
class _$GamesStateCopyWithImpl<$Res, $Val extends GamesState>
    implements $GamesStateCopyWith<$Res> {
  _$GamesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = freezed,
    Object? genres = freezed,
    Object? isLoading = null,
    Object? selectedGenre = freezed,
  }) {
    return _then(_value.copyWith(
      games: freezed == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedGenre: freezed == selectedGenre
          ? _value.selectedGenre
          : selectedGenre // ignore: cast_nullable_to_non_nullable
              as Genre?,
    ) as $Val);
  }

  /// Create a copy of GamesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenreCopyWith<$Res>? get selectedGenre {
    if (_value.selectedGenre == null) {
      return null;
    }

    return $GenreCopyWith<$Res>(_value.selectedGenre!, (value) {
      return _then(_value.copyWith(selectedGenre: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GamesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Game>? games,
      List<Genre>? genres,
      bool isLoading,
      Genre? selectedGenre});

  @override
  $GenreCopyWith<$Res>? get selectedGenre;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GamesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GamesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = freezed,
    Object? genres = freezed,
    Object? isLoading = null,
    Object? selectedGenre = freezed,
  }) {
    return _then(_$InitialImpl(
      games: freezed == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedGenre: freezed == selectedGenre
          ? _value.selectedGenre
          : selectedGenre // ignore: cast_nullable_to_non_nullable
              as Genre?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<Game>? games,
      final List<Genre>? genres,
      this.isLoading = true,
      this.selectedGenre})
      : _games = games,
        _genres = genres;

  final List<Game>? _games;
  @override
  List<Game>? get games {
    final value = _games;
    if (value == null) return null;
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Genre>? _genres;
  @override
  List<Genre>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Genre? selectedGenre;

  @override
  String toString() {
    return 'GamesState.initial(games: $games, genres: $genres, isLoading: $isLoading, selectedGenre: $selectedGenre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedGenre, selectedGenre) ||
                other.selectedGenre == selectedGenre));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_games),
      const DeepCollectionEquality().hash(_genres),
      isLoading,
      selectedGenre);

  /// Create a copy of GamesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game>? games, List<Genre>? genres,
            bool isLoading, Genre? selectedGenre)
        initial,
  }) {
    return initial(games, genres, isLoading, selectedGenre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Game>? games, List<Genre>? genres, bool isLoading,
            Genre? selectedGenre)?
        initial,
  }) {
    return initial?.call(games, genres, isLoading, selectedGenre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game>? games, List<Genre>? genres, bool isLoading,
            Genre? selectedGenre)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(games, genres, isLoading, selectedGenre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GamesState {
  const factory _Initial(
      {final List<Game>? games,
      final List<Genre>? genres,
      final bool isLoading,
      final Genre? selectedGenre}) = _$InitialImpl;

  @override
  List<Game>? get games;
  @override
  List<Genre>? get genres;
  @override
  bool get isLoading;
  @override
  Genre? get selectedGenre;

  /// Create a copy of GamesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
