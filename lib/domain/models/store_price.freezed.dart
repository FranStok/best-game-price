// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StorePrice _$StorePriceFromJson(Map<String, dynamic> json) {
  return _StorePrice.fromJson(json);
}

/// @nodoc
mixin _$StorePrice {
  double get price => throw _privateConstructorUsedError;
  @JsonKey(fromJson: StorePrice.readEnum, name: "storeId")
  StoreEnum get store => throw _privateConstructorUsedError;

  /// Serializes this StorePrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StorePrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StorePriceCopyWith<StorePrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorePriceCopyWith<$Res> {
  factory $StorePriceCopyWith(
          StorePrice value, $Res Function(StorePrice) then) =
      _$StorePriceCopyWithImpl<$Res, StorePrice>;
  @useResult
  $Res call(
      {double price,
      @JsonKey(fromJson: StorePrice.readEnum, name: "storeId")
      StoreEnum store});
}

/// @nodoc
class _$StorePriceCopyWithImpl<$Res, $Val extends StorePrice>
    implements $StorePriceCopyWith<$Res> {
  _$StorePriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorePrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? store = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorePriceImplCopyWith<$Res>
    implements $StorePriceCopyWith<$Res> {
  factory _$$StorePriceImplCopyWith(
          _$StorePriceImpl value, $Res Function(_$StorePriceImpl) then) =
      __$$StorePriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double price,
      @JsonKey(fromJson: StorePrice.readEnum, name: "storeId")
      StoreEnum store});
}

/// @nodoc
class __$$StorePriceImplCopyWithImpl<$Res>
    extends _$StorePriceCopyWithImpl<$Res, _$StorePriceImpl>
    implements _$$StorePriceImplCopyWith<$Res> {
  __$$StorePriceImplCopyWithImpl(
      _$StorePriceImpl _value, $Res Function(_$StorePriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorePrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? store = null,
  }) {
    return _then(_$StorePriceImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorePriceImpl extends _StorePrice {
  _$StorePriceImpl(
      {required this.price,
      @JsonKey(fromJson: StorePrice.readEnum, name: "storeId")
      required this.store})
      : super._();

  factory _$StorePriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorePriceImplFromJson(json);

  @override
  final double price;
  @override
  @JsonKey(fromJson: StorePrice.readEnum, name: "storeId")
  final StoreEnum store;

  @override
  String toString() {
    return 'StorePrice(price: $price, store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorePriceImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.store, store) || other.store == store));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, store);

  /// Create a copy of StorePrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorePriceImplCopyWith<_$StorePriceImpl> get copyWith =>
      __$$StorePriceImplCopyWithImpl<_$StorePriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorePriceImplToJson(
      this,
    );
  }
}

abstract class _StorePrice extends StorePrice {
  factory _StorePrice(
      {required final double price,
      @JsonKey(fromJson: StorePrice.readEnum, name: "storeId")
      required final StoreEnum store}) = _$StorePriceImpl;
  _StorePrice._() : super._();

  factory _StorePrice.fromJson(Map<String, dynamic> json) =
      _$StorePriceImpl.fromJson;

  @override
  double get price;
  @override
  @JsonKey(fromJson: StorePrice.readEnum, name: "storeId")
  StoreEnum get store;

  /// Create a copy of StorePrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorePriceImplCopyWith<_$StorePriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
