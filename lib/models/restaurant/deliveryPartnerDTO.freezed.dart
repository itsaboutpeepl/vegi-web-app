// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deliveryPartnerDTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryPartnerDTO _$DeliveryPartnerDTOFromJson(Map<String, dynamic> json) {
  return _DeliveryPartnerDTO.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPartnerDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryPartnerDTOCopyWith<DeliveryPartnerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPartnerDTOCopyWith<$Res> {
  factory $DeliveryPartnerDTOCopyWith(
          DeliveryPartnerDTO value, $Res Function(DeliveryPartnerDTO) then) =
      _$DeliveryPartnerDTOCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$DeliveryPartnerDTOCopyWithImpl<$Res>
    implements $DeliveryPartnerDTOCopyWith<$Res> {
  _$DeliveryPartnerDTOCopyWithImpl(this._value, this._then);

  final DeliveryPartnerDTO _value;
  // ignore: unused_field
  final $Res Function(DeliveryPartnerDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DeliveryPartnerDTOCopyWith<$Res>
    implements $DeliveryPartnerDTOCopyWith<$Res> {
  factory _$$_DeliveryPartnerDTOCopyWith(_$_DeliveryPartnerDTO value,
          $Res Function(_$_DeliveryPartnerDTO) then) =
      __$$_DeliveryPartnerDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_DeliveryPartnerDTOCopyWithImpl<$Res>
    extends _$DeliveryPartnerDTOCopyWithImpl<$Res>
    implements _$$_DeliveryPartnerDTOCopyWith<$Res> {
  __$$_DeliveryPartnerDTOCopyWithImpl(
      _$_DeliveryPartnerDTO _value, $Res Function(_$_DeliveryPartnerDTO) _then)
      : super(_value, (v) => _then(v as _$_DeliveryPartnerDTO));

  @override
  _$_DeliveryPartnerDTO get _value => super._value as _$_DeliveryPartnerDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DeliveryPartnerDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_DeliveryPartnerDTO extends _DeliveryPartnerDTO {
  _$_DeliveryPartnerDTO({required this.id, required this.name}) : super._();

  factory _$_DeliveryPartnerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryPartnerDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'DeliveryPartnerDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryPartnerDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveryPartnerDTOCopyWith<_$_DeliveryPartnerDTO> get copyWith =>
      __$$_DeliveryPartnerDTOCopyWithImpl<_$_DeliveryPartnerDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryPartnerDTOToJson(
      this,
    );
  }
}

abstract class _DeliveryPartnerDTO extends DeliveryPartnerDTO {
  factory _DeliveryPartnerDTO(
      {required final int id,
      required final String name}) = _$_DeliveryPartnerDTO;
  _DeliveryPartnerDTO._() : super._();

  factory _DeliveryPartnerDTO.fromJson(Map<String, dynamic> json) =
      _$_DeliveryPartnerDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryPartnerDTOCopyWith<_$_DeliveryPartnerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
