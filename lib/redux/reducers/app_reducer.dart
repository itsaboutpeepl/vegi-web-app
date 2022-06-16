import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/reducers/cart_state_reducers.dart';
import 'package:vegan_liverpool/redux/reducers/home_page_reducer.dart';
import 'package:vegan_liverpool/redux/reducers/menu_item_reducers.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    homePageState: HomePageReducers(state.homePageState, action),
    cartState: CartStateReducers(state.cartState, action),
    menuItemState: MenuItemReducers(state.menuItemState, action),
  );
}
