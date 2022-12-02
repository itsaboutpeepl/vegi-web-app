// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vendorDTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VendorDTO _$VendorDTOFromJson(Map<String, dynamic> json) {
  return _VendorDTO.fromJson(json);
}

/// @nodoc
mixin _$VendorDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorDTOCopyWith<VendorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorDTOCopyWith<$Res> {
  factory $VendorDTOCopyWith(VendorDTO value, $Res Function(VendorDTO) then) =
      _$VendorDTOCopyWithImpl<$Res>;
  $Res call({int id, String name, String? phoneNumber});
}

/// @nodoc
class _$VendorDTOCopyWithImpl<$Res> implements $VendorDTOCopyWith<$Res> {
  _$VendorDTOCopyWithImpl(this._value, this._then);

  final VendorDTO _value;
  // ignore: unused_field
  final $Res Function(VendorDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
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
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_VendorDTOCopyWith<$Res> implements $VendorDTOCopyWith<$Res> {
  factory _$$_VendorDTOCopyWith(
          _$_VendorDTO value, $Res Function(_$_VendorDTO) then) =
      __$$_VendorDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String? phoneNumber});
}

/// @nodoc
class __$$_VendorDTOCopyWithImpl<$Res> extends _$VendorDTOCopyWithImpl<$Res>
    implements _$$_VendorDTOCopyWith<$Res> {
  __$$_VendorDTOCopyWithImpl(
      _$_VendorDTO _value, $Res Function(_$_VendorDTO) _then)
      : super(_value, (v) => _then(v as _$_VendorDTO));

  @override
  _$_VendorDTO get _value => super._value as _$_VendorDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_VendorDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_VendorDTO extends _VendorDTO {
  _$_VendorDTO(
      {required this.id, required this.name, required this.phoneNumber})
      : super._();

  factory _$_VendorDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VendorDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'VendorDTO(id: $id, name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendorDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_VendorDTOCopyWith<_$_VendorDTO> get copyWith =>
      __$$_VendorDTOCopyWithImpl<_$_VendorDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VendorDTOToJson(
      this,
    );
  }
}

abstract class _VendorDTO extends VendorDTO {
  factory _VendorDTO(
      {required final int id,
      required final String name,
      required final String? phoneNumber}) = _$_VendorDTO;
  _VendorDTO._() : super._();

  factory _VendorDTO.fromJson(Map<String, dynamic> json) =
      _$_VendorDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_VendorDTOCopyWith<_$_VendorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
