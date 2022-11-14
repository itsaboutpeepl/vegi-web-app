// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  @HomePageStateConverter()
  HomePageState get homePageState => throw _privateConstructorUsedError;
  @UserCartStateConverter()
  UserCartState get cartState => throw _privateConstructorUsedError;
  @MenuItemStateConverter()
  MenuItemState get menuItemState => throw _privateConstructorUsedError;
  @UserStateConverter()
  UserState get userState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {@HomePageStateConverter() HomePageState homePageState,
      @UserCartStateConverter() UserCartState cartState,
      @MenuItemStateConverter() MenuItemState menuItemState,
      @UserStateConverter() UserState userState});

  $HomePageStateCopyWith<$Res> get homePageState;
  $UserCartStateCopyWith<$Res> get cartState;
  $MenuItemStateCopyWith<$Res> get menuItemState;
  $UserStateCopyWith<$Res> get userState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? homePageState = freezed,
    Object? cartState = freezed,
    Object? menuItemState = freezed,
    Object? userState = freezed,
  }) {
    return _then(_value.copyWith(
      homePageState: homePageState == freezed
          ? _value.homePageState
          : homePageState // ignore: cast_nullable_to_non_nullable
              as HomePageState,
      cartState: cartState == freezed
          ? _value.cartState
          : cartState // ignore: cast_nullable_to_non_nullable
              as UserCartState,
      menuItemState: menuItemState == freezed
          ? _value.menuItemState
          : menuItemState // ignore: cast_nullable_to_non_nullable
              as MenuItemState,
      userState: userState == freezed
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as UserState,
    ));
  }

  @override
  $HomePageStateCopyWith<$Res> get homePageState {
    return $HomePageStateCopyWith<$Res>(_value.homePageState, (value) {
      return _then(_value.copyWith(homePageState: value));
    });
  }

  @override
  $UserCartStateCopyWith<$Res> get cartState {
    return $UserCartStateCopyWith<$Res>(_value.cartState, (value) {
      return _then(_value.copyWith(cartState: value));
    });
  }

  @override
  $MenuItemStateCopyWith<$Res> get menuItemState {
    return $MenuItemStateCopyWith<$Res>(_value.menuItemState, (value) {
      return _then(_value.copyWith(menuItemState: value));
    });
  }

  @override
  $UserStateCopyWith<$Res> get userState {
    return $UserStateCopyWith<$Res>(_value.userState, (value) {
      return _then(_value.copyWith(userState: value));
    });
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HomePageStateConverter() HomePageState homePageState,
      @UserCartStateConverter() UserCartState cartState,
      @MenuItemStateConverter() MenuItemState menuItemState,
      @UserStateConverter() UserState userState});

  @override
  $HomePageStateCopyWith<$Res> get homePageState;
  @override
  $UserCartStateCopyWith<$Res> get cartState;
  @override
  $MenuItemStateCopyWith<$Res> get menuItemState;
  @override
  $UserStateCopyWith<$Res> get userState;
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, (v) => _then(v as _$_AppState));

  @override
  _$_AppState get _value => super._value as _$_AppState;

  @override
  $Res call({
    Object? homePageState = freezed,
    Object? cartState = freezed,
    Object? menuItemState = freezed,
    Object? userState = freezed,
  }) {
    return _then(_$_AppState(
      homePageState: homePageState == freezed
          ? _value.homePageState
          : homePageState // ignore: cast_nullable_to_non_nullable
              as HomePageState,
      cartState: cartState == freezed
          ? _value.cartState
          : cartState // ignore: cast_nullable_to_non_nullable
              as UserCartState,
      menuItemState: menuItemState == freezed
          ? _value.menuItemState
          : menuItemState // ignore: cast_nullable_to_non_nullable
              as MenuItemState,
      userState: userState == freezed
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as UserState,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_AppState extends _AppState {
  _$_AppState(
      {@HomePageStateConverter() required this.homePageState,
      @UserCartStateConverter() required this.cartState,
      @MenuItemStateConverter() required this.menuItemState,
      @UserStateConverter() required this.userState})
      : super._();

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  @HomePageStateConverter()
  final HomePageState homePageState;
  @override
  @UserCartStateConverter()
  final UserCartState cartState;
  @override
  @MenuItemStateConverter()
  final MenuItemState menuItemState;
  @override
  @UserStateConverter()
  final UserState userState;

  @override
  String toString() {
    return 'AppState(homePageState: $homePageState, cartState: $cartState, menuItemState: $menuItemState, userState: $userState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality()
                .equals(other.homePageState, homePageState) &&
            const DeepCollectionEquality().equals(other.cartState, cartState) &&
            const DeepCollectionEquality()
                .equals(other.menuItemState, menuItemState) &&
            const DeepCollectionEquality().equals(other.userState, userState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(homePageState),
      const DeepCollectionEquality().hash(cartState),
      const DeepCollectionEquality().hash(menuItemState),
      const DeepCollectionEquality().hash(userState));

  @JsonKey(ignore: true)
  @override
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(
      this,
    );
  }
}

abstract class _AppState extends AppState {
  factory _AppState(
      {@HomePageStateConverter() required final HomePageState homePageState,
      @UserCartStateConverter() required final UserCartState cartState,
      @MenuItemStateConverter() required final MenuItemState menuItemState,
      @UserStateConverter() required final UserState userState}) = _$_AppState;
  _AppState._() : super._();

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  @HomePageStateConverter()
  HomePageState get homePageState;
  @override
  @UserCartStateConverter()
  UserCartState get cartState;
  @override
  @MenuItemStateConverter()
  MenuItemState get menuItemState;
  @override
  @UserStateConverter()
  UserState get userState;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
