// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeSlot _$TimeSlotFromJson(Map<String, dynamic> json) {
  return _TimeSlot.fromJson(json);
}

/// @nodoc
mixin _$TimeSlot {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  int get priceModifier => throw _privateConstructorUsedError;
  int get fulfilmentMethodId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSlotCopyWith<TimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotCopyWith<$Res> {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) then) =
      _$TimeSlotCopyWithImpl<$Res>;
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      int priceModifier,
      int fulfilmentMethodId});
}

/// @nodoc
class _$TimeSlotCopyWithImpl<$Res> implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._value, this._then);

  final TimeSlot _value;
  // ignore: unused_field
  final $Res Function(TimeSlot) _then;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? priceModifier = freezed,
    Object? fulfilmentMethodId = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priceModifier: priceModifier == freezed
          ? _value.priceModifier
          : priceModifier // ignore: cast_nullable_to_non_nullable
              as int,
      fulfilmentMethodId: fulfilmentMethodId == freezed
          ? _value.fulfilmentMethodId
          : fulfilmentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeSlotCopyWith<$Res> implements $TimeSlotCopyWith<$Res> {
  factory _$$_TimeSlotCopyWith(
          _$_TimeSlot value, $Res Function(_$_TimeSlot) then) =
      __$$_TimeSlotCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      int priceModifier,
      int fulfilmentMethodId});
}

/// @nodoc
class __$$_TimeSlotCopyWithImpl<$Res> extends _$TimeSlotCopyWithImpl<$Res>
    implements _$$_TimeSlotCopyWith<$Res> {
  __$$_TimeSlotCopyWithImpl(
      _$_TimeSlot _value, $Res Function(_$_TimeSlot) _then)
      : super(_value, (v) => _then(v as _$_TimeSlot));

  @override
  _$_TimeSlot get _value => super._value as _$_TimeSlot;

  @override
  $Res call({
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? priceModifier = freezed,
    Object? fulfilmentMethodId = freezed,
  }) {
    return _then(_$_TimeSlot(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priceModifier: priceModifier == freezed
          ? _value.priceModifier
          : priceModifier // ignore: cast_nullable_to_non_nullable
              as int,
      fulfilmentMethodId: fulfilmentMethodId == freezed
          ? _value.fulfilmentMethodId
          : fulfilmentMethodId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_TimeSlot extends _TimeSlot {
  _$_TimeSlot(
      {required this.startTime,
      required this.endTime,
      required this.priceModifier,
      required this.fulfilmentMethodId})
      : super._();

  factory _$_TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$$_TimeSlotFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final int priceModifier;
  @override
  final int fulfilmentMethodId;

  @override
  String toString() {
    return 'TimeSlot(startTime: $startTime, endTime: $endTime, priceModifier: $priceModifier, fulfilmentMethodId: $fulfilmentMethodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeSlot &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality()
                .equals(other.priceModifier, priceModifier) &&
            const DeepCollectionEquality()
                .equals(other.fulfilmentMethodId, fulfilmentMethodId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(priceModifier),
      const DeepCollectionEquality().hash(fulfilmentMethodId));

  @JsonKey(ignore: true)
  @override
  _$$_TimeSlotCopyWith<_$_TimeSlot> get copyWith =>
      __$$_TimeSlotCopyWithImpl<_$_TimeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeSlotToJson(
      this,
    );
  }
}

abstract class _TimeSlot extends TimeSlot {
  factory _TimeSlot(
      {required final DateTime startTime,
      required final DateTime endTime,
      required final int priceModifier,
      required final int fulfilmentMethodId}) = _$_TimeSlot;
  _TimeSlot._() : super._();

  factory _TimeSlot.fromJson(Map<String, dynamic> json) = _$_TimeSlot.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  int get priceModifier;
  @override
  int get fulfilmentMethodId;
  @override
  @JsonKey(ignore: true)
  _$$_TimeSlotCopyWith<_$_TimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}
