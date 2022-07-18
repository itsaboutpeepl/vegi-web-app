import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:js/js_util.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:vegan_liverpool/constants/enums.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/helpers.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';
import 'package:vegan_liverpool/models/restaurant/fullfilmentMethods.dart';
import 'package:vegan_liverpool/models/restaurant/cartItem.dart';
import 'package:vegan_liverpool/models/webViewHandlers.dart';
import 'package:vegan_liverpool/services.dart';
import 'package:vegan_liverpool/utils/log/log.dart';
import 'package:redux/redux.dart';
import 'package:intl/intl.dart';

class UpdateCartItems {
  final List<CartItem> cartItems;
  UpdateCartItems({required this.cartItems});
}

class UpdateComputedCartValues {
  final int cartSubTotal;
  final int cartTax;
  final int cartTotal;
  final int cartDiscountComputed;

  UpdateComputedCartValues(this.cartSubTotal, this.cartTax, this.cartTotal, this.cartDiscountComputed);
}

class UpdateCartDiscount {
  final int cartDiscountPercent;
  final String discountCode;
  UpdateCartDiscount(this.cartDiscountPercent, this.discountCode);
}

class ClearCart {
  ClearCart();
}

class UpdateSlots {
  final List<Map<String, String>> deliverySlots;
  final List<Map<String, String>> collectionSlots;

  UpdateSlots(this.deliverySlots, this.collectionSlots);
}

class UpdateSelectedDeliveryAddress {
  final DeliveryAddresses? selectedAddress;
  UpdateSelectedDeliveryAddress(this.selectedAddress);
}

class UpdateSelectedTimeSlot {
  final Map<String, String> selectedTimeSlot;
  UpdateSelectedTimeSlot(this.selectedTimeSlot);
}

class UpdateTipAmount {
  final int tipAmount;
  UpdateTipAmount(this.tipAmount);
}

class CreateOrder {
  final String orderID;
  final String paymentIntentID;
  CreateOrder(this.orderID, this.paymentIntentID);
}

class SetTransferringPayment {
  bool flag;
  SetTransferringPayment(this.flag);
}

class SetError {
  bool flag;
  SetError(this.flag);
}

class SetConfirmed {
  bool flag;
  SetConfirmed(this.flag);
}

class UpdateSelectedAmounts {
  final double GBPxAmount;
  final double PPLAmount;
  UpdateSelectedAmounts(this.GBPxAmount, this.PPLAmount);
}

class SetRestaurantDetails {
  final String restaurantID;
  final String restaurantName;
  final DeliveryAddresses restaurantAddress;
  final String walletAddress;
  final int minimumOrder;
  final int platformFee;

  SetRestaurantDetails(
    this.restaurantID,
    this.restaurantName,
    this.restaurantAddress,
    this.walletAddress,
    this.minimumOrder,
    this.platformFee,
  );
}

class SetDeliveryCharge {
  final int deliveryCharge;

  SetDeliveryCharge(this.deliveryCharge);
}

class SetFulfilmentFees {
  final int deliveryCharge;
  final int collectionCharge;

  SetFulfilmentFees(this.deliveryCharge, this.collectionCharge);
}

class SetFulfilmentMethod {
  final FulfilmentMethod fulfilmentMethod;
  SetFulfilmentMethod(this.fulfilmentMethod);
}

class SetIsDelivery {
  final bool isDelivery;
  SetIsDelivery(this.isDelivery);
}

class AddDeliveryAddress {
  final List<DeliveryAddresses> listOfAddresses;
  AddDeliveryAddress(this.listOfAddresses);
}

class UpdateUserWalletAddress {
  final String userWalletAddress;
  UpdateUserWalletAddress(this.userWalletAddress);
}

class UpdateUserDisplayName {
  final String userDisplayName;
  UpdateUserDisplayName(this.userDisplayName);
}

class UpdatePaymentIntentID {
  final String paymentIntentID;
  UpdatePaymentIntentID(this.paymentIntentID);
}

class SetDeliveryInstructions {
  final String deliveryInstructions;
  SetDeliveryInstructions(this.deliveryInstructions);
}

ThunkAction getUserData() {
  return (Store store) async {
    store.dispatch(UpdateUserWalletAddress(await promiseToFuture(getWalletAddress())));
    store.dispatch(UpdateUserDisplayName(await promiseToFuture(getDisplayName())));
  };
}

ThunkAction getFullfillmentMethods({DateTime? newDate}) {
  return (Store store) async {
    try {
      DateFormat formatter = DateFormat('yyyy-MM-dd');
      FullfilmentMethods fullfilmentMethods;

      if ([null, ""].contains(newDate)) {
        fullfilmentMethods = await peeplEatsService.getFulfilmentSlots(
            vendorID: store.state.cartState.restaurantID, dateRequired: formatter.format(DateTime.now()));
      } else {
        fullfilmentMethods = await peeplEatsService.getFulfilmentSlots(
            vendorID: store.state.cartState.restaurantID, dateRequired: formatter.format(newDate!));
      }
      store.dispatch(UpdateSlots(fullfilmentMethods.deliverySlots, fullfilmentMethods.collectionSlots));

      store.dispatch(SetFulfilmentFees(
        fullfilmentMethods.deliveryMethod == null ? 0 : fullfilmentMethods.deliveryMethod!['priceModifier'] ?? 0,
        fullfilmentMethods.collectionMethod == null ? 0 : fullfilmentMethods.collectionMethod!['priceModifier'] ?? 0,
      ));
    } catch (e, s) {
      log.error('ERROR - getFullfillmentMethods $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - getFullfillmentMethods $e',
      );
    }
  };
}

ThunkAction updateCartTip(int newTip) {
  return (Store store) async {
    try {
      store.dispatch(UpdateTipAmount(newTip));
      store.dispatch(computeCartTotals());
    } catch (e, s) {
      log.error('ERROR - updateCartTip $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - updateCartTip $e',
      );
    }
  };
}

ThunkAction updateCartDiscount(String newDiscountCode, VoidCallback errorCallback) {
  return (Store store) async {
    try {
      if (newDiscountCode == 'REMOVE') {
        store.dispatch(UpdateCartDiscount(0, ""));
        store.dispatch(computeCartTotals());
      } else {
        int discountPercent = await peeplEatsService.checkDiscountCode(newDiscountCode).onError(
          (error, stackTrace) {
            errorCallback();
            return 0;
          },
        );

        if (discountPercent != 0) {
          store.dispatch(UpdateCartDiscount(discountPercent, newDiscountCode));
          store.dispatch(computeCartTotals());
        }
      }
    } catch (e, s) {
      log.error('ERROR - updateComputeUserCart $e');
      errorCallback();
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - updateComputeUserCart $e',
      );
    }
  };
}

ThunkAction updateCartItems(List<CartItem> itemsToAdd) {
  return (Store store) async {
    try {
      List<CartItem> cartItems = List.from(store.state.cartState.cartItems);

      cartItems.addAll(itemsToAdd);

      store.dispatch(UpdateCartItems(cartItems: cartItems));

      store.dispatch(computeCartTotals());
    } catch (e, s) {
      log.error('ERROR - updateComputeUserCart $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - updateComputeUserCart $e',
      );
    }
  };
}

ThunkAction updateCartItemQuantity(CartItem itemToAdd) {
  return (Store store) async {
    try {
      List<CartItem> cartItems = store.state.cartState.cartItems;
      if (itemToAdd.itemQuantity == 0) {
        cartItems.removeWhere((element) => element.internalID == itemToAdd.internalID);
      } else {
        int index = cartItems.indexWhere((element) => element.internalID == itemToAdd.internalID);

        cartItems.removeWhere((element) => element.internalID == itemToAdd.internalID);

        cartItems.insert(index, itemToAdd);
      }

      store.dispatch(UpdateCartItems(cartItems: cartItems));

      store.dispatch(computeCartTotals());
    } catch (e, s) {
      log.error('ERROR - updateComputeUserCart $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - updateComputeUserCart $e',
      );
    }
  };
}

ThunkAction computeCartTotals() {
  return (Store store) async {
    try {
      List<CartItem> cartItems = store.state.cartState.cartItems;

      int cartSubTotal = 0;
      int cartTax = 0;
      int cartTotal = 0;
      int deliveryPrice = store.state.cartState.cartDeliveryCharge;
      int platformFee = store.state.cartState.restaurantPlatformFee;
      int cartDiscountPercent = store.state.cartState.cartDiscountPercent;
      int cartDiscountComputed = 0;
      int cartTip = store.state.cartState.selectedTipAmount * 100;

      cartItems.forEach((element) {
        cartSubTotal += element.totalItemPrice;
      });

      // add price of each order Item (which has options included)

      cartDiscountComputed = (cartSubTotal * cartDiscountPercent) ~/ 100; // subtotal * discount

      //cartTax = ((cartSubTotal - cartDiscountComputed) * 5) ~/ 100;

      cartTotal = (cartSubTotal + cartTax + cartTip + deliveryPrice + platformFee) - cartDiscountComputed;

      store.dispatch(UpdateComputedCartValues(cartSubTotal, cartTax, cartTotal, cartDiscountComputed));
    } catch (e, s) {
      log.error('ERROR - updateComputeUserCart $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - updateComputeUserCart $e',
      );
    }
  };
}

ThunkAction prepareAndSendOrder(void Function(String errorText) errorCallback, VoidCallback successCallback) {
  return (Store store) async {
    try {
      if (store.state.cartState.fulfilmentMethod == FulfilmentMethod.none) {
        errorCallback("Please select or create an address");
        return;
      } else if (store.state.cartState.selectedTimeSlot.isEmpty) {
        errorCallback("Please select a time slot");
        return;
      } else if (store.state.cartState.restaurantMinimumOrder > store.state.cartState.cartTotal) {
        errorCallback("Your order does not satisfy the minimum order amount");
        return;
      }

      Map<String, dynamic> orderObject = {};

      orderObject.addAll({
        "items": store.state.cartState.cartItems
            .map(
              (e) => {
                "id": int.parse(e.menuItem.menuItemID),
                "quantity": e.itemQuantity,
                "options": e.selectedProductOptions.map(
                  (key, value) => MapEntry<String, int>(key.toString(), value.optionID),
                ),
              },
            )
            .toList(),
        "total": store.state.cartState.cartTotal,
        "tipAmount": store.state.cartState.selectedTipAmount * 100,
        "marketingOptIn": false,
        "discountCode": store.state.cartState.discountCode,
        "vendor": store.state.cartState.restaurantID,
        "walletAddress": store.state.cartState.userWalletAddress ?? "0x846253e3ac22ad7910d6170db514789a322c09c5",
      });

      if (store.state.cartState.fulfilmentMethod == FulfilmentMethod.delivery) {
        if (store.state.cartState.selectedDeliveryAddress == null) {
          errorCallback("Please select an address");
          return;
        }
        DeliveryAddresses selectedAddress = store.state.cartState.selectedDeliveryAddress!;

        orderObject.addAll(
          {
            "address": {
              "name": store.state.cartState.userDisplayName,
              "phoneNumber": selectedAddress.phoneNumber ?? "",
              "email": "email@notprovided.com",
              "lineOne": selectedAddress.addressLine1,
              "lineTwo": selectedAddress.addressLine2 + ", " + selectedAddress.townCity,
              "postCode": selectedAddress.postalCode,
              "deliveryInstructions": store.state.cartState.deliveryInstructions,
            },
            "fulfilmentMethod": 1,
            "fulfilmentSlotFrom": formatDateForOrderObject(store.state.cartState.selectedTimeSlot.entries.first.value),
            "fulfilmentSlotTo": formatDateForOrderObject(store.state.cartState.selectedTimeSlot.entries.last.value),
          },
        );
      } else if (store.state.cartState.fulfilmentMethod == FulfilmentMethod.collection) {
        orderObject.addAll(
          {
            "address": {
              "name": "Collection Order",
              "email": "order@collection.com",
              "phoneNumber": "12345678910",
              "lineOne": "10 Collection Street",
              "lineTwo": "",
              "postCode": "L7 0HG",
              "deliveryInstructions": store.state.cartState.deliveryInstructions,
            },
            "fulfilmentMethod": 2,
            "fulfilmentSlotFrom": formatDateForOrderObject(store.state.cartState.selectedTimeSlot.entries.first.value),
            "fulfilmentSlotTo": formatDateForOrderObject(store.state.cartState.selectedTimeSlot.entries.last.value),
          },
        );
      }

      print("Order Object Created: ${json.encode(orderObject).toString()}");

      //Call create order API with prepared orderobject
      Map result = await peeplEatsService.createOrder(orderObject).timeout(Duration(seconds: 10), onTimeout: () {
        return {}; //return empty map on timeout to trigger errorCallback
      });

      if (result.isNotEmpty) {
        store.dispatch(UpdatePaymentIntentID(result['paymentIntentID']));
        //Call Peepl Pay API to start checking the paymentIntentID
        Map checkResult = await peeplPayService.startPaymentIntentCheck(result['paymentIntentID']);

        print("Order Result $result");

        //Crosscheck the PaymentIntentID with the amount calculcated on device.
        if (checkResult['paymentIntent']['amount'] == store.state.cartState.cartTotal) {
          store.dispatch(CreateOrder(result['orderID'].toString(), result['paymentIntentID']));

          //subscribe to firebase topic of orderID

          //firebaseMessaging.subscribeToTopic('order-' + result['orderID'].toString());
          paymentFunction(result['paymentIntentID']);
          successCallback();
        } else {
          //check if it is better to just update the total value with the api returned or return an error
          errorCallback("Order totals aren't matching");
        }
      } else {
        errorCallback("Our servers seem to be down");
      }
    } catch (e, s) {
      errorCallback("Something went wrong");
      log.error('ERROR - prepareAndSendOrder $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - prepareAndSendOrder $e',
      );
    }
  };
}

ThunkAction startCheckTimer(VoidCallback successCallback, VoidCallback errorCallback) {
  return (Store store) async {
    try {
      print("start check timer");
      //Set loading to true
      Timer.periodic(
        const Duration(seconds: 4),
        (timer) async {
          print("inside timer");
          final Future<Map<dynamic, dynamic>> checkOrderResponse =
              peeplEatsService.checkOrderStatus(store.state.cartState.orderID);
          print("after api call");
          checkOrderResponse.then(
            (completedValue) {
              print("after .then");
              if (completedValue['paymentStatus'] == "paid") {
                print("inside paid");
                store.dispatch(SetTransferringPayment(false));
                store.dispatch(SetConfirmed(true));
                successCallback();
                timer.cancel();
              }
            },
          );
        },
      );
    } catch (e, s) {
      store.dispatch(SetError(true));
      log.error('ERROR - sendTokenPayment $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - sendTokenPayment $e',
      );
    }
  };
}

ThunkAction setRestaurantDetails({
  required String restaurantID,
  required String restaurantName,
  required DeliveryAddresses restaurantAddress,
  required String walletAddress,
  required int minimumOrder,
  required int platformFee,
  required VoidCallback sendSnackBar,
}) {
  return (Store store) async {
    try {
      //If cart has existing items -> clear cart, set new restaurant details, show snackbar if cart had items.

      if (store.state.cartState.restaurantName.isNotEmpty && store.state.cartState.restaurantID.isNotEmpty) {
        sendSnackBar();
        store.dispatch(ClearCart());
        store.dispatch(
          SetRestaurantDetails(
            restaurantID,
            restaurantName,
            restaurantAddress,
            walletAddress,
            minimumOrder,
            platformFee,
          ),
        );
      } else {
        store.dispatch(
          SetRestaurantDetails(
            restaurantID,
            restaurantName,
            restaurantAddress,
            walletAddress,
            minimumOrder,
            platformFee,
          ),
        );
      }
      // If cart does not have existing items -> set new restaurant details

    } catch (e, s) {
      store.dispatch(SetError(true));
      log.error('ERROR - setRestaurantDetails $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - setRestaurantDetails $e',
      );
    }
  };
}

ThunkAction addNewDeliveryAddress(DeliveryAddresses newAddress) {
  return (Store store) {
    List<DeliveryAddresses> listOfAddresses = List.from(store.state.cartState.listOfDeliveryAddresses);

    int index = listOfAddresses.indexWhere((element) => element.internalID == newAddress.internalID);

    listOfAddresses.removeWhere((element) {
      return element.internalID == newAddress.internalID;
    });

    index == -1 ? listOfAddresses.add(newAddress) : listOfAddresses.insert(index, newAddress);

    store.dispatch(AddDeliveryAddress(listOfAddresses));
    store.dispatch(UpdateSelectedDeliveryAddress(newAddress));
  };
}

ThunkAction deleteExistingDeliveryAddress(DeliveryAddresses addressToBeDeleted) {
  return (Store store) {
    List<DeliveryAddresses> listOfAddresses = List.from(store.state.cartState.listOfDeliveryAddresses);

    int indexOfAddress = listOfAddresses.indexOf(addressToBeDeleted);
    listOfAddresses.removeAt(indexOfAddress);

    store.dispatch(AddDeliveryAddress(listOfAddresses));
    listOfAddresses.isEmpty
        ? store.dispatch(UpdateSelectedDeliveryAddress(null))
        : listOfAddresses.length - 1 == indexOfAddress
            ? store.dispatch(UpdateSelectedDeliveryAddress(listOfAddresses[indexOfAddress]))
            : store.dispatch(UpdateSelectedDeliveryAddress(listOfAddresses[indexOfAddress - 1]));
  };
}
