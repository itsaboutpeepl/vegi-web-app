// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'productOptionsCategory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductOptionsCategory _$ProductOptionsCategoryFromJson(
    Map<String, dynamic> json) {
  return _ProductOptionsCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductOptionsCategory {
  int get categoryID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ProductOptions> get listOfOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductOptionsCategoryCopyWith<ProductOptionsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOptionsCategoryCopyWith<$Res> {
  factory $ProductOptionsCategoryCopyWith(ProductOptionsCategory value,
          $Res Function(ProductOptionsCategory) then) =
      _$ProductOptionsCategoryCopyWithImpl<$Res>;
  $Res call({int categoryID, String name, List<ProductOptions> listOfOptions});
}

/// @nodoc
class _$ProductOptionsCategoryCopyWithImpl<$Res>
    implements $ProductOptionsCategoryCopyWith<$Res> {
  _$ProductOptionsCategoryCopyWithImpl(this._value, this._then);

  final ProductOptionsCategory _value;
  // ignore: unused_field
  final $Res Function(ProductOptionsCategory) _then;

  @override
  $Res call({
    Object? categoryID = freezed,
    Object? name = freezed,
    Object? listOfOptions = freezed,
  }) {
    return _then(_value.copyWith(
      categoryID: categoryID == freezed
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listOfOptions: listOfOptions == freezed
          ? _value.listOfOptions
          : listOfOptions // ignore: cast_nullable_to_non_nullable
              as List<ProductOptions>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductOptionsCategoryCopyWith<$Res>
    implements $ProductOptionsCategoryCopyWith<$Res> {
  factory _$$_ProductOptionsCategoryCopyWith(_$_ProductOptionsCategory value,
          $Res Function(_$_ProductOptionsCategory) then) =
      __$$_ProductOptionsCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int categoryID, String name, List<ProductOptions> listOfOptions});
}

/// @nodoc
class __$$_ProductOptionsCategoryCopyWithImpl<$Res>
    extends _$ProductOptionsCategoryCopyWithImpl<$Res>
    implements _$$_ProductOptionsCategoryCopyWith<$Res> {
  __$$_ProductOptionsCategoryCopyWithImpl(_$_ProductOptionsCategory _value,
      $Res Function(_$_ProductOptionsCategory) _then)
      : super(_value, (v) => _then(v as _$_ProductOptionsCategory));

  @override
  _$_ProductOptionsCategory get _value =>
      super._value as _$_ProductOptionsCategory;

  @override
  $Res call({
    Object? categoryID = freezed,
    Object? name = freezed,
    Object? listOfOptions = freezed,
  }) {
    return _then(_$_ProductOptionsCategory(
      categoryID: categoryID == freezed
          ? _value.categoryID
          : categoryID // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listOfOptions: listOfOptions == freezed
          ? _value.listOfOptions
          : listOfOptions // ignore: cast_nullable_to_non_nullable
              as List<ProductOptions>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ProductOptionsCategory extends _ProductOptionsCategory {
  _$_ProductOptionsCategory(
      {required this.categoryID,
      required this.name,
      required this.listOfOptions})
      : super._();

  factory _$_ProductOptionsCategory.fromJson(Map<String, dynamic> json) =>
      _$$_ProductOptionsCategoryFromJson(json);

  @override
  final int categoryID;
  @override
  final String name;
  @override
  final List<ProductOptions> listOfOptions;

  @override
  String toString() {
    return 'ProductOptionsCategory(categoryID: $categoryID, name: $name, listOfOptions: $listOfOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductOptionsCategory &&
            const DeepCollectionEquality()
                .equals(other.categoryID, categoryID) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.listOfOptions, listOfOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryID),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(listOfOptions));

  @JsonKey(ignore: true)
  @override
  _$$_ProductOptionsCategoryCopyWith<_$_ProductOptionsCategory> get copyWith =>
      __$$_ProductOptionsCategoryCopyWithImpl<_$_ProductOptionsCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductOptionsCategoryToJson(this);
  }
}

abstract class _ProductOptionsCategory extends ProductOptionsCategory {
  factory _ProductOptionsCategory(
          {required final int categoryID,
          required final String name,
          required final List<ProductOptions> listOfOptions}) =
      _$_ProductOptionsCategory;
  _ProductOptionsCategory._() : super._();

  factory _ProductOptionsCategory.fromJson(Map<String, dynamic> json) =
      _$_ProductOptionsCategory.fromJson;

  @override
  int get categoryID => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<ProductOptions> get listOfOptions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductOptionsCategoryCopyWith<_$_ProductOptionsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
