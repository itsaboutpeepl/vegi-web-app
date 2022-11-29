// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  return _UserState.fromJson(json);
}

/// @nodoc
mixin _$UserState {
  List<DeliveryAddresses> get listOfDeliveryAddresses =>
      throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get postcode => throw _privateConstructorUsedError;
  num get gbpBalance => throw _privateConstructorUsedError;
  num get pplBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {List<DeliveryAddresses> listOfDeliveryAddresses,
      String walletAddress,
      String displayName,
      String phoneNumber,
      String email,
      String postcode,
      num gbpBalance,
      num pplBalance});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? listOfDeliveryAddresses = freezed,
    Object? walletAddress = freezed,
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? postcode = freezed,
    Object? gbpBalance = freezed,
    Object? pplBalance = freezed,
  }) {
    return _then(_value.copyWith(
      listOfDeliveryAddresses: listOfDeliveryAddresses == freezed
          ? _value.listOfDeliveryAddresses
          : listOfDeliveryAddresses // ignore: cast_nullable_to_non_nullable
              as List<DeliveryAddresses>,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: postcode == freezed
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      gbpBalance: gbpBalance == freezed
          ? _value.gbpBalance
          : gbpBalance // ignore: cast_nullable_to_non_nullable
              as num,
      pplBalance: pplBalance == freezed
          ? _value.pplBalance
          : pplBalance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DeliveryAddresses> listOfDeliveryAddresses,
      String walletAddress,
      String displayName,
      String phoneNumber,
      String email,
      String postcode,
      num gbpBalance,
      num pplBalance});
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, (v) => _then(v as _$_UserState));

  @override
  _$_UserState get _value => super._value as _$_UserState;

  @override
  $Res call({
    Object? listOfDeliveryAddresses = freezed,
    Object? walletAddress = freezed,
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? postcode = freezed,
    Object? gbpBalance = freezed,
    Object? pplBalance = freezed,
  }) {
    return _then(_$_UserState(
      listOfDeliveryAddresses: listOfDeliveryAddresses == freezed
          ? _value.listOfDeliveryAddresses
          : listOfDeliveryAddresses // ignore: cast_nullable_to_non_nullable
              as List<DeliveryAddresses>,
      walletAddress: walletAddress == freezed
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: postcode == freezed
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      gbpBalance: gbpBalance == freezed
          ? _value.gbpBalance
          : gbpBalance // ignore: cast_nullable_to_non_nullable
              as num,
      pplBalance: pplBalance == freezed
          ? _value.pplBalance
          : pplBalance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_UserState extends _UserState {
  _$_UserState(
      {this.listOfDeliveryAddresses = const [],
      this.walletAddress = '',
      this.displayName = '',
      this.phoneNumber = '',
      this.email = '',
      this.postcode = '',
      this.gbpBalance = 0,
      this.pplBalance = 0})
      : super._();

  factory _$_UserState.fromJson(Map<String, dynamic> json) =>
      _$$_UserStateFromJson(json);

  @override
  @JsonKey()
  final List<DeliveryAddresses> listOfDeliveryAddresses;
  @override
  @JsonKey()
  final String walletAddress;
  @override
  @JsonKey()
  final String displayName;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String postcode;
  @override
  @JsonKey()
  final num gbpBalance;
  @override
  @JsonKey()
  final num pplBalance;

  @override
  String toString() {
    return 'UserState(listOfDeliveryAddresses: $listOfDeliveryAddresses, walletAddress: $walletAddress, displayName: $displayName, phoneNumber: $phoneNumber, email: $email, postcode: $postcode, gbpBalance: $gbpBalance, pplBalance: $pplBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            const DeepCollectionEquality().equals(
                other.listOfDeliveryAddresses, listOfDeliveryAddresses) &&
            const DeepCollectionEquality()
                .equals(other.walletAddress, walletAddress) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.postcode, postcode) &&
            const DeepCollectionEquality()
                .equals(other.gbpBalance, gbpBalance) &&
            const DeepCollectionEquality()
                .equals(other.pplBalance, pplBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listOfDeliveryAddresses),
      const DeepCollectionEquality().hash(walletAddress),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(postcode),
      const DeepCollectionEquality().hash(gbpBalance),
      const DeepCollectionEquality().hash(pplBalance));

  @JsonKey(ignore: true)
  @override
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStateToJson(
      this,
    );
  }
}

abstract class _UserState extends UserState {
  factory _UserState(
      {final List<DeliveryAddresses> listOfDeliveryAddresses,
      final String walletAddress,
      final String displayName,
      final String phoneNumber,
      final String email,
      final String postcode,
      final num gbpBalance,
      final num pplBalance}) = _$_UserState;
  _UserState._() : super._();

  factory _UserState.fromJson(Map<String, dynamic> json) =
      _$_UserState.fromJson;

  @override
  List<DeliveryAddresses> get listOfDeliveryAddresses;
  @override
  String get walletAddress;
  @override
  String get displayName;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get postcode;
  @override
  num get gbpBalance;
  @override
  num get pplBalance;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
