import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:vegan_liverpool/models/home_page_state.dart';
import 'package:vegan_liverpool/models/menu_item_state.dart';
import 'package:vegan_liverpool/models/user_cart_state.dart';
import 'package:vegan_liverpool/models/user_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@immutable
@Freezed()
class AppState with _$AppState {
  const AppState._();

  @JsonSerializable()
  factory AppState({
    @HomePageStateConverter() required HomePageState homePageState,
    @UserCartStateConverter() required UserCartState cartState,
    @MenuItemStateConverter() required MenuItemState menuItemState,
    @UserStateConverter() required UserState userState,
  }) = _AppState;

  factory AppState.initial() {
    return AppState(
      homePageState: HomePageState.initial(),
      cartState: UserCartState.initial(),
      menuItemState: MenuItemState.initial(),
      userState: UserState.initial(),
    );
  }

  factory AppState.fromJson(dynamic json) => _$AppStateFromJson(json);
}
