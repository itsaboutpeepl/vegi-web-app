import 'package:js/js_util.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';
import 'package:vegan_liverpool/models/webViewHandlers.dart';
import 'package:vegan_liverpool/utils/analytics.dart';
import 'package:vegan_liverpool/utils/log/log.dart';

class SetDisplayName {
  SetDisplayName(this.displayName);
  String displayName;

  @override
  String toString() => 'SetDisplayName : displayName: $displayName';
}

class SetEmail {
  SetEmail(this.email);
  String email;

  @override
  String toString() => 'SetEmail : email: $email';
}

class SetUserInformation {
  SetUserInformation({
    required this.displayName,
    required this.email,
    required this.gbpBalance,
    required this.phoneNumber,
    required this.postcode,
    required this.pplBalance,
    required this.walletAddress,
  });
  String displayName;
  String email;
  String phoneNumber;
  String postcode;
  String walletAddress;
  num gbpBalance;
  num pplBalance;

  @override
  String toString() => 'SetUserInformation : displayName: $displayName, '
      'email: $email, gbpBalance: $gbpBalance, phoneNumber: $phoneNumber, '
      'postcode: $postcode, pplBalance: $pplBalance, walletAddress: $walletAddress';
}

class UpdateListOfDeliveryAddresses {
  UpdateListOfDeliveryAddresses(this.listOfAddresses);
  final List<DeliveryAddresses> listOfAddresses;

  @override
  String toString() =>
      'UpdateListOfDeliveryAddresses : listOfAddresses: $listOfAddresses';
}

ThunkAction<AppState> addDeliveryAddress({
  required DeliveryAddresses newAddress,
}) {
  return (Store<AppState> store) {
    try {
      final List<DeliveryAddresses> listOfAddresses =
          List.from(store.state.userState.listOfDeliveryAddresses)
            ..add(newAddress);

      store.dispatch(UpdateListOfDeliveryAddresses(listOfAddresses));
    } catch (e, s) {
      log.error(
        'ERROR - addDeliveryAddress',
        error: e,
        stackTrace: s,
      );
      Sentry.captureException(
        Exception('ERROR - addDeliveryAddress: ${e.toString()}'),
        stackTrace: s,
        hint: 'ERROR - addDeliveryAddress',
      );
    }
  };
}

ThunkAction<AppState> removeDeliveryAddress({
  required int addressId,
}) {
  return (Store<AppState> store) {
    try {
      final List<DeliveryAddresses> listOfAddresses =
          List.from(store.state.userState.listOfDeliveryAddresses)
            ..removeWhere((element) => element.internalID == addressId);

      store.dispatch(UpdateListOfDeliveryAddresses(listOfAddresses));
    } catch (e, s) {
      log.error(
        'ERROR - removeDeliveryAddress',
        error: e,
        stackTrace: s,
      );
      Sentry.captureException(
        Exception('ERROR - removeDeliveryAddress: ${e.toString()}'),
        stackTrace: s,
        hint: 'ERROR - removeDeliveryAddress',
      );
    }
  };
}

ThunkAction<AppState> updateDeliveryAddress({
  required int oldId,
  required DeliveryAddresses newAddress,
}) {
  return (Store<AppState> store) {
    try {
      final List<DeliveryAddresses> listOfAddresses =
          List.from(store.state.userState.listOfDeliveryAddresses);
      final index =
          listOfAddresses.indexWhere((element) => element.internalID == oldId);

      listOfAddresses
        ..removeAt(index)
        ..insert(index, newAddress);

      store.dispatch(UpdateListOfDeliveryAddresses(listOfAddresses));
    } catch (e, s) {
      log.error(
        'ERROR - updateDeliveryAddress',
        error: e,
        stackTrace: s,
      );
      Sentry.captureException(
        Exception('ERROR - updateDeliveryAddress: ${e.toString()}'),
        stackTrace: s,
        hint: 'ERROR - updateDeliveryAddress',
      );
    }
  };
}

ThunkAction<AppState> identifyCall() {
  return (Store<AppState> store) async {
    final dynamic userInformation =
        dartify(await promiseToFuture(getUserInformation()));

    print(userInformation.runtimeType);
    print(userInformation);
    log.info('User Information: $userInformation');

    store.dispatch(
      SetUserInformation(
        displayName: userInformation['displayName'] as String? ?? '',
        email: userInformation['email'] as String? ?? '',
        gbpBalance: userInformation['gbpBalance'] as num? ?? 0,
        phoneNumber: userInformation['phoneNumber'] as String? ?? '',
        postcode: userInformation['postcode'] as String? ?? '',
        pplBalance: userInformation['pplBalance'] as num? ?? 0,
        walletAddress: userInformation['walletAddress'] as String? ?? '',
      ),
    );

    final Map<String, dynamic> properties = {
      'phoneNumber': userInformation['phoneNumber'] as String? ?? '',
      'walletAddress': userInformation['walletAddress'] as String? ?? '',
      'displayName': userInformation['displayName'] as String? ?? '',
    };
    await Analytics.setUserInformation(properties);
    await Analytics.setUserId(userInformation['phoneNumber'] as String? ?? '');
  };
}
