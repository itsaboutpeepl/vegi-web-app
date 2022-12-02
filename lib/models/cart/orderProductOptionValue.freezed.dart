// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orderProductOptionValue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderProductOptionValue _$OrderProductOptionValueFromJson(
    Map<String, dynamic> json) {
  return _OrderProductOptionValue.fromJson(json);
}

/// @nodoc
mixin _$OrderProductOptionValue {
  String get name => throw _privateConstructorUsedError;
  String get chosenOption => throw _privateConstructorUsedError;
  int get priceModifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderProductOptionValueCopyWith<OrderProductOptionValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductOptionValueCopyWith<$Res> {
  factory $OrderProductOptionValueCopyWith(OrderProductOptionValue value,
          $Res Function(OrderProductOptionValue) then) =
      _$OrderProductOptionValueCopyWithImpl<$Res>;
  $Res call({String name, String chosenOption, int priceModifier});
}

/// @nodoc
class _$OrderProductOptionValueCopyWithImpl<$Res>
    implements $OrderProductOptionValueCopyWith<$Res> {
  _$OrderProductOptionValueCopyWithImpl(this._value, this._then);

  final OrderProductOptionValue _value;
  // ignore: unused_field
  final $Res Function(OrderProductOptionValue) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? chosenOption = freezed,
    Object? priceModifier = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chosenOption: chosenOption == freezed
          ? _value.chosenOption
          : chosenOption // ignore: cast_nullable_to_non_nullable
              as String,
      priceModifier: priceModifier == freezed
          ? _value.priceModifier
          : priceModifier // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderProductOptionValueCopyWith<$Res>
    implements $OrderProductOptionValueCopyWith<$Res> {
  factory _$$_OrderProductOptionValueCopyWith(_$_OrderProductOptionValue value,
          $Res Function(_$_OrderProductOptionValue) then) =
      __$$_OrderProductOptionValueCopyWithImpl<$Res>;
  @override
  $Res call({String name, String chosenOption, int priceModifier});
}

/// @nodoc
class __$$_OrderProductOptionValueCopyWithImpl<$Res>
    extends _$OrderProductOptionValueCopyWithImpl<$Res>
    implements _$$_OrderProductOptionValueCopyWith<$Res> {
  __$$_OrderProductOptionValueCopyWithImpl(_$_OrderProductOptionValue _value,
      $Res Function(_$_OrderProductOptionValue) _then)
      : super(_value, (v) => _then(v as _$_OrderProductOptionValue));

  @override
  _$_OrderProductOptionValue get _value =>
      super._value as _$_OrderProductOptionValue;

  @override
  $Res call({
    Object? name = freezed,
    Object? chosenOption = freezed,
    Object? priceModifier = freezed,
  }) {
    return _then(_$_OrderProductOptionValue(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chosenOption: chosenOption == freezed
          ? _value.chosenOption
          : chosenOption // ignore: cast_nullable_to_non_nullable
              as String,
      priceModifier: priceModifier == freezed
          ? _value.priceModifier
          : priceModifier // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_OrderProductOptionValue extends _OrderProductOptionValue {
  _$_OrderProductOptionValue(
      {required this.name,
      required this.chosenOption,
      required this.priceModifier})
      : super._();

  factory _$_OrderProductOptionValue.fromJson(Map<String, dynamic> json) =>
      _$$_OrderProductOptionValueFromJson(json);

  @override
  final String name;
  @override
  final String chosenOption;
  @override
  final int priceModifier;

  @override
  String toString() {
    return 'OrderProductOptionValue(name: $name, chosenOption: $chosenOption, priceModifier: $priceModifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderProductOptionValue &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.chosenOption, chosenOption) &&
            const DeepCollectionEquality()
                .equals(other.priceModifier, priceModifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(chosenOption),
      const DeepCollectionEquality().hash(priceModifier));

  @JsonKey(ignore: true)
  @override
  _$$_OrderProductOptionValueCopyWith<_$_OrderProductOptionValue>
      get copyWith =>
          __$$_OrderProductOptionValueCopyWithImpl<_$_OrderProductOptionValue>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderProductOptionValueToJson(
      this,
    );
  }
}

abstract class _OrderProductOptionValue extends OrderProductOptionValue {
  factory _OrderProductOptionValue(
      {required final String name,
      required final String chosenOption,
      required final int priceModifier}) = _$_OrderProductOptionValue;
  _OrderProductOptionValue._() : super._();

  factory _OrderProductOptionValue.fromJson(Map<String, dynamic> json) =
      _$_OrderProductOptionValue.fromJson;

  @override
  String get name;
  @override
  String get chosenOption;
  @override
  int get priceModifier;
  @override
  @JsonKey(ignore: true)
  _$$_OrderProductOptionValueCopyWith<_$_OrderProductOptionValue>
      get copyWith => throw _privateConstructorUsedError;
}
