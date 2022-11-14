// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deliveryAddresses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryAddresses _$DeliveryAddressesFromJson(Map<String, dynamic> json) {
  return _DeliveryAddresses.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAddresses {
  int get internalID => throw _privateConstructorUsedError;
  String get addressLine1 => throw _privateConstructorUsedError;
  String get addressLine2 => throw _privateConstructorUsedError;
  String get townCity => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  DeliveryAddressLabel get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryAddressesCopyWith<DeliveryAddresses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressesCopyWith<$Res> {
  factory $DeliveryAddressesCopyWith(
          DeliveryAddresses value, $Res Function(DeliveryAddresses) then) =
      _$DeliveryAddressesCopyWithImpl<$Res>;
  $Res call(
      {int internalID,
      String addressLine1,
      String addressLine2,
      String townCity,
      String postalCode,
      DeliveryAddressLabel label});
}

/// @nodoc
class _$DeliveryAddressesCopyWithImpl<$Res>
    implements $DeliveryAddressesCopyWith<$Res> {
  _$DeliveryAddressesCopyWithImpl(this._value, this._then);

  final DeliveryAddresses _value;
  // ignore: unused_field
  final $Res Function(DeliveryAddresses) _then;

  @override
  $Res call({
    Object? internalID = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? townCity = freezed,
    Object? postalCode = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      internalID: internalID == freezed
          ? _value.internalID
          : internalID // ignore: cast_nullable_to_non_nullable
              as int,
      addressLine1: addressLine1 == freezed
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: addressLine2 == freezed
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      townCity: townCity == freezed
          ? _value.townCity
          : townCity // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressLabel,
    ));
  }
}

/// @nodoc
abstract class _$$_DeliveryAddressesCopyWith<$Res>
    implements $DeliveryAddressesCopyWith<$Res> {
  factory _$$_DeliveryAddressesCopyWith(_$_DeliveryAddresses value,
          $Res Function(_$_DeliveryAddresses) then) =
      __$$_DeliveryAddressesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int internalID,
      String addressLine1,
      String addressLine2,
      String townCity,
      String postalCode,
      DeliveryAddressLabel label});
}

/// @nodoc
class __$$_DeliveryAddressesCopyWithImpl<$Res>
    extends _$DeliveryAddressesCopyWithImpl<$Res>
    implements _$$_DeliveryAddressesCopyWith<$Res> {
  __$$_DeliveryAddressesCopyWithImpl(
      _$_DeliveryAddresses _value, $Res Function(_$_DeliveryAddresses) _then)
      : super(_value, (v) => _then(v as _$_DeliveryAddresses));

  @override
  _$_DeliveryAddresses get _value => super._value as _$_DeliveryAddresses;

  @override
  $Res call({
    Object? internalID = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? townCity = freezed,
    Object? postalCode = freezed,
    Object? label = freezed,
  }) {
    return _then(_$_DeliveryAddresses(
      internalID: internalID == freezed
          ? _value.internalID
          : internalID // ignore: cast_nullable_to_non_nullable
              as int,
      addressLine1: addressLine1 == freezed
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: addressLine2 == freezed
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      townCity: townCity == freezed
          ? _value.townCity
          : townCity // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as DeliveryAddressLabel,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_DeliveryAddresses extends _DeliveryAddresses {
  _$_DeliveryAddresses(
      {required this.internalID,
      required this.addressLine1,
      required this.addressLine2,
      required this.townCity,
      required this.postalCode,
      required this.label})
      : super._();

  factory _$_DeliveryAddresses.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryAddressesFromJson(json);

  @override
  final int internalID;
  @override
  final String addressLine1;
  @override
  final String addressLine2;
  @override
  final String townCity;
  @override
  final String postalCode;
  @override
  final DeliveryAddressLabel label;

  @override
  String toString() {
    return 'DeliveryAddresses(internalID: $internalID, addressLine1: $addressLine1, addressLine2: $addressLine2, townCity: $townCity, postalCode: $postalCode, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryAddresses &&
            const DeepCollectionEquality()
                .equals(other.internalID, internalID) &&
            const DeepCollectionEquality()
                .equals(other.addressLine1, addressLine1) &&
            const DeepCollectionEquality()
                .equals(other.addressLine2, addressLine2) &&
            const DeepCollectionEquality().equals(other.townCity, townCity) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.label, label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(internalID),
      const DeepCollectionEquality().hash(addressLine1),
      const DeepCollectionEquality().hash(addressLine2),
      const DeepCollectionEquality().hash(townCity),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(label));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveryAddressesCopyWith<_$_DeliveryAddresses> get copyWith =>
      __$$_DeliveryAddressesCopyWithImpl<_$_DeliveryAddresses>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryAddressesToJson(
      this,
    );
  }
}

abstract class _DeliveryAddresses extends DeliveryAddresses {
  factory _DeliveryAddresses(
      {required final int internalID,
      required final String addressLine1,
      required final String addressLine2,
      required final String townCity,
      required final String postalCode,
      required final DeliveryAddressLabel label}) = _$_DeliveryAddresses;
  _DeliveryAddresses._() : super._();

  factory _DeliveryAddresses.fromJson(Map<String, dynamic> json) =
      _$_DeliveryAddresses.fromJson;

  @override
  int get internalID;
  @override
  String get addressLine1;
  @override
  String get addressLine2;
  @override
  String get townCity;
  @override
  String get postalCode;
  @override
  DeliveryAddressLabel get label;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryAddressesCopyWith<_$_DeliveryAddresses> get copyWith =>
      throw _privateConstructorUsedError;
}
