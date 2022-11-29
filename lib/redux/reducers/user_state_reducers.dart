import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/user_state.dart';
import 'package:vegan_liverpool/redux/actions/user_actions.dart';

final userReducers = combineReducers<UserState>([
  TypedReducer<UserState, SetDisplayName>(_setDisplayName),
  TypedReducer<UserState, SetEmail>(_setEmail),
  TypedReducer<UserState, SetUserInformation>(_setUserInformation),
  TypedReducer<UserState, UpdateListOfDeliveryAddresses>(_addDeliveryAddress),
]);

UserState _addDeliveryAddress(
  UserState state,
  UpdateListOfDeliveryAddresses action,
) {
  return state.copyWith(listOfDeliveryAddresses: action.listOfAddresses);
}

UserState _setDisplayName(
  UserState state,
  SetDisplayName action,
) {
  return state.copyWith(displayName: action.displayName);
}

UserState _setEmail(
  UserState state,
  SetEmail action,
) {
  return state.copyWith(email: action.email);
}

UserState _setUserInformation(
  UserState state,
  SetUserInformation action,
) {
  return state.copyWith(
    displayName: action.displayName,
    email: action.email,
    gbpBalance: action.gbpBalance,
    phoneNumber: action.phoneNumber,
    postcode: action.postcode,
    pplBalance: action.pplBalance,
    walletAddress: action.walletAddress,
  );
}
