// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      homePageState: const HomePageStateConverter()
          .fromJson(json['homePageState'] as Map<String, dynamic>?),
      cartState: const UserCartStateConverter()
          .fromJson(json['cartState'] as Map<String, dynamic>?),
      menuItemState: const MenuItemStateConverter()
          .fromJson(json['menuItemState'] as Map<String, dynamic>?),
      userState: const UserStateConverter()
          .fromJson(json['userState'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'homePageState':
          const HomePageStateConverter().toJson(instance.homePageState),
      'cartState': const UserCartStateConverter().toJson(instance.cartState),
      'menuItemState':
          const MenuItemStateConverter().toJson(instance.menuItemState),
      'userState': const UserStateConverter().toJson(instance.userState),
    };
