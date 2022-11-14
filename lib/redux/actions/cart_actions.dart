import 'dart:async';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:vegan_liverpool/constants/enums.dart';
import 'package:vegan_liverpool/features/shared/widgets/snackbars.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/helpers.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/restaurant/cartItem.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';
import 'package:vegan_liverpool/models/restaurant/fullfilmentMethods.dart';
import 'package:vegan_liverpool/models/restaurant/payment_methods.dart';
import 'package:vegan_liverpool/services.dart';
import 'package:vegan_liverpool/utils/log/log.dart';

class UpdateCartItems {
  UpdateCartItems({required this.cartItems});
  final List<CartItem> cartItems;

  @override
  String toString() {
    return 'UpdateCartItems : $cartItems';
  }
}

class UpdateComputedCartValues {
  UpdateComputedCartValues(
    this.cartSubTotal,
    this.cartTax,
    this.cartTotal,
    this.cartDiscountComputed,
  );
  final int cartSubTotal;
  final int cartTax;
  final int cartTotal;
  final int cartDiscountComputed;

  @override
  String toString() {
    return 'UpdateComputedCartValues : CartSubTotal: $cartSubTotal, '
        'cartTax: $cartTax, cartTotal: $cartTotal, '
        'cartDiscountComputed: $cartDiscountComputed';
  }
}

class UpdateCartDiscount {
  UpdateCartDiscount(this.cartDiscountPercent, this.discountCode);
  final int cartDiscountPercent;
  final String discountCode;

  @override
  String toString() {
    return 'UpdateCartDiscount : cartDiscountPercent: $cartDiscountPercent, '
        'discountCode: $discountCode';
  }
}

class ClearCart {
  ClearCart();

  @override
  String toString() {
    return 'ClearCart';
  }
}

class UpdateSlots {
  UpdateSlots(this.deliverySlots, this.collectionSlots);
  final List<Map<String, String>> deliverySlots;
  final List<Map<String, String>> collectionSlots;

  @override
  String toString() {
    return 'UpdateSlots : deliverySlots: $deliverySlots, '
        'collectionSlots: $collectionSlots';
  }
}

class UpdateSelectedDeliveryAddress {
  UpdateSelectedDeliveryAddress(this.selectedAddress);
  final DeliveryAddresses? selectedAddress;

  @override
  String toString() {
    return 'UpdateSelectedDeliveryAddress : selectedAddress: $selectedAddress';
  }
}

class UpdateSelectedTimeSlot {
  UpdateSelectedTimeSlot(this.selectedTimeSlot);
  final Map<String, String> selectedTimeSlot;

  @override
  String toString() {
    return 'UpdateSelectedTimeSlot : selectedTimeSlot: $selectedTimeSlot';
  }
}

class UpdateTipAmount {
  UpdateTipAmount(this.tipAmount);
  final int tipAmount;

  @override
  String toString() {
    return 'UpdateTipAmount : tipAmount: $tipAmount';
  }
}

class CreateOrder {
  CreateOrder(this.orderID, this.paymentIntentID);
  final String orderID;
  final String paymentIntentID;

  @override
  String toString() {
    return 'CreateOrder : orderID: $orderID, paymentIntentID: $paymentIntentID';
  }
}

class SetTransferringPayment {
  SetTransferringPayment({required this.flag});
  bool flag;

  @override
  String toString() {
    return 'SetTransferringPayment : flag: $flag';
  }
}

class SetError {
  SetError({required this.flag});
  bool flag;

  @override
  String toString() {
    return 'SetError : flag: $flag';
  }
}

class SetConfirmed {
  SetConfirmed({required this.flag});
  bool flag;

  @override
  String toString() {
    return 'SetConfirmed : flag: $flag';
  }
}

class UpdateSelectedAmounts {
  UpdateSelectedAmounts({required this.gbpxAmount, required this.pplAmount});
  final double gbpxAmount;
  final double pplAmount;

  @override
  String toString() {
    return 'UpdateSelectedAmounts : GBPxAmount: $gbpxAmount,'
        'PPLAmount:$pplAmount';
  }
}

class SetRestaurantDetails {
  SetRestaurantDetails(
    this.restaurantID,
    this.restaurantName,
    this.restaurantAddress,
    this.walletAddress,
    this.minimumOrder,
    this.platformFee,
  );
  final String restaurantID;
  final String restaurantName;
  final DeliveryAddresses restaurantAddress;
  final String walletAddress;
  final int minimumOrder;
  final int platformFee;

  @override
  String toString() {
    return 'SetRestaurantDetails : restaurantID: $restaurantID, '
        'restaurantName: $restaurantName, restaurantAddress:'
        '$restaurantAddress, walletAddress:$walletAddress, '
        'minimumOrder:$minimumOrder, platformFee:$platformFee';
  }
}

class SetDeliveryCharge {
  SetDeliveryCharge(this.deliveryCharge);
  final int deliveryCharge;

  @override
  String toString() {
    return 'SetDeliveryCharge : deliveryCharge: $deliveryCharge';
  }
}

class SetFulfilmentFees {
  SetFulfilmentFees(this.deliveryCharge, this.collectionCharge);
  final int deliveryCharge;
  final int collectionCharge;

  @override
  String toString() {
    return 'SetFulfilmentFees : deliveryCharge: $deliveryCharge, '
        'collectionCharge: $collectionCharge';
  }
}

class SetFulfilmentMethodIds {
  SetFulfilmentMethodIds(this.deliveryMethodId, this.collectionMethodId);
  final int deliveryMethodId;
  final int collectionMethodId;

  @override
  String toString() {
    return 'SetFulfilmentMethodIds : deliveryMethodId: $deliveryMethodId, '
        'collectionMethodId: $collectionMethodId';
  }
}

class SetFulfilmentMethod {
  SetFulfilmentMethod(this.fulfilmentMethod);
  final FulfilmentMethod fulfilmentMethod;

  @override
  String toString() {
    return 'SetFulfilmentMethod : fulfilmentMethod: $fulfilmentMethod';
  }
}

class SetIsDelivery {
  SetIsDelivery({required this.isDelivery});
  final bool isDelivery;

  @override
  String toString() {
    return 'SetIsDelivery : isDelivery: $isDelivery';
  }
}

class SetDeliveryInstructions {
  SetDeliveryInstructions(this.deliveryInstructions);
  final String deliveryInstructions;

  @override
  String toString() {
    return 'SetDeliveryInstructions : deliveryInstructions: '
        '$deliveryInstructions';
  }
}

class SetPaymentMethod {
  SetPaymentMethod(this.paymentMethod);
  final PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'SetPaymentMethod : paymentMethod: $paymentMethod';
  }
}

class SetPaymentButtonFlag {
  SetPaymentButtonFlag(this.flag);
  final bool flag;

  @override
  String toString() {
    return 'SetPaymentButtonFlag : flag: $flag';
  }
}

ThunkAction<AppState> getFullfillmentMethods({DateTime? newDate}) {
  return (Store<AppState> store) async {
    try {
      final DateFormat formatter = DateFormat('yyyy-MM-dd');
      FullfilmentMethods fullfilmentMethods;

      if (newDate == null) {
        fullfilmentMethods = await peeplEatsService.getFulfilmentSlots(
          vendorID: store.state.cartState.restaurantID,
          dateRequired: formatter.format(DateTime.now()),
        );
      } else {
        fullfilmentMethods = await peeplEatsService.getFulfilmentSlots(
          vendorID: store.state.cartState.restaurantID,
          dateRequired: formatter.format(newDate),
        );
      }
      store
        ..dispatch(
          UpdateSlots(
            fullfilmentMethods.deliverySlots,
            fullfilmentMethods.collectionSlots,
          ),
        )
        ..dispatch(
          SetFulfilmentFees(
            fullfilmentMethods.deliveryMethod == null
                ? 0
                : fullfilmentMethods.deliveryMethod!['priceModifier'] as int? ??
                    0,
            fullfilmentMethods.collectionMethod == null
                ? 0
                : fullfilmentMethods.collectionMethod!['priceModifier']
                        as int? ??
                    0,
          ),
        )
        ..dispatch(
          SetFulfilmentMethodIds(
            fullfilmentMethods.deliveryMethod!['id'] as int,
            fullfilmentMethods.collectionMethod!['id'] as int,
          ),
        )
        ..dispatch(computeCartTotals());
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

ThunkAction<AppState> updateCartTip(int newTip) {
  return (Store<AppState> store) async {
    try {
      store
        ..dispatch(UpdateTipAmount(newTip))
        ..dispatch(computeCartTotals());
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

ThunkAction<AppState> updateCartDiscount({
  required String newDiscountCode,
  required void Function() successCallback,
  required void Function() errorCallback,
}) {
  return (Store<AppState> store) async {
    try {
      final int discountPercent =
          await peeplEatsService.checkDiscountCode(newDiscountCode).onError(
        (error, stackTrace) {
          errorCallback();
          return 0;
        },
      );

      if (discountPercent != 0) {
        store
          ..dispatch(UpdateCartDiscount(discountPercent, newDiscountCode))
          ..dispatch(computeCartTotals());
        successCallback();
      }
    } catch (e, s) {
      log.error('ERROR - updateCartDiscount $e');
      errorCallback();
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - updateCartDiscount $e',
      );
    }
  };
}

ThunkAction<AppState> removeCartDiscount() {
  return (Store<AppState> store) async {
    try {
      store
        ..dispatch(UpdateCartDiscount(0, ''))
        ..dispatch(computeCartTotals());
    } catch (e, s) {
      log.error('ERROR - removeCartDiscount $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - removeCartDiscount $e',
      );
    }
  };
}

ThunkAction<AppState> updateCartItems(List<CartItem> itemsToAdd) {
  return (Store<AppState> store) async {
    try {
      final List<CartItem> cartItems =
          List.from(store.state.cartState.cartItems)..addAll(itemsToAdd);

      store
        ..dispatch(UpdateCartItems(cartItems: cartItems))
        ..dispatch(computeCartTotals());
    } catch (e, s) {
      log.error('ERROR - updateCartItems $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - updateCartItems $e',
      );
    }
  };
}

ThunkAction<AppState> addDuplicateCartItem(int itemId) {
  return (Store<AppState> store) async {
    try {
      final cartItem = store.state.cartState.cartItems
          .where((element) => element.internalID == itemId)
          .first
          .copyWith(
            internalID: Random(
              DateTime.now().millisecondsSinceEpoch,
            ).nextInt(100000),
          );

      final List<CartItem> cartItems =
          List.from(store.state.cartState.cartItems)..add(cartItem);

      store
        ..dispatch(UpdateCartItems(cartItems: cartItems))
        ..dispatch(computeCartTotals());
    } catch (e, s) {
      log.error('ERROR - addDuplicateCartItem $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - addDuplicateCartItem $e',
      );
    }
  };
}

ThunkAction<AppState> removeCartItem(int itemId) {
  return (Store<AppState> store) async {
    try {
      final List<CartItem> cartItems =
          List.from(store.state.cartState.cartItems)
            ..removeWhere((element) => element.internalID == itemId);

      store
        ..dispatch(UpdateCartItems(cartItems: cartItems))
        ..dispatch(computeCartTotals());

      if (cartItems.isEmpty) {
        rootRouter.navigateBack();
      }
    } catch (e, s) {
      log.error('ERROR - removeCartItem $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - removeCartItem $e',
      );
    }
  };
}

ThunkAction<AppState> computeCartTotals() {
  return (Store<AppState> store) async {
    try {
      final List<CartItem> cartItems = store.state.cartState.cartItems;

      int cartSubTotal = 0;
      const int cartTax = 0;
      int cartTotal = 0;
      final int deliveryFee = store.state.cartState.deliveryCharge;
      final int collectionFee = store.state.cartState.collectionCharge;
      final int platformFee = store.state.cartState.restaurantPlatformFee;
      final int cartDiscountPercent = store.state.cartState.cartDiscountPercent;
      int cartDiscountComputed = 0;
      final int cartTip = store.state.cartState.selectedTipAmount;
      final bool isDelivery = store.state.cartState.isDelivery;

      for (final element in cartItems) {
        cartSubTotal += element.totalItemPrice;
      }

      // add price of each order Item (which has options included)

      cartDiscountComputed =
          (cartSubTotal * cartDiscountPercent) ~/ 100; // subtotal * discount

      //cartTax = ((cartSubTotal - cartDiscountComputed) * 5) ~/ 100;

      if (isDelivery) {
        cartTotal =
            (cartSubTotal + cartTax + cartTip + deliveryFee + platformFee) -
                cartDiscountComputed;
      } else {
        cartTotal =
            (cartSubTotal + cartTax + cartTip + collectionFee + platformFee) -
                cartDiscountComputed;
      }

      if (cartItems.isEmpty) {
        cartSubTotal = 0;
        cartTotal = 0;
        cartDiscountComputed = 0;
      }

      store.dispatch(
        UpdateComputedCartValues(
          cartSubTotal,
          cartTax,
          cartTotal,
          cartDiscountComputed,
        ),
      );
    } catch (e, s) {
      log.error('ERROR - computeCartTotals $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - computeCartTotals $e',
      );
    }
  };
}

ThunkAction<AppState> startOrderCreationProcess({
  required BuildContext context,
}) {
  return (Store<AppState> store) async {
    try {
      final cartState = store.state.cartState;
      if (cartState.selectedTimeSlot.isEmpty) {
        showErrorSnack(context: context, title: 'Please select a time slot');
        return;
      }
      if (cartState.selectedDeliveryAddress == null && cartState.isDelivery) {
        showErrorSnack(
          context: context,
          title: 'Please select a delivery address',
        );
        return;
      }
      if (cartState.restaurantMinimumOrder > cartState.cartSubTotal) {
        showErrorSnack(
          context: context,
          title: 'This restaurant is not accepting orders below'
              '${cartState.restaurantMinimumOrder.formattedPrice}',
        );
      } else {
        if (cartState.isDelivery) {
          store.dispatch(
            prepareOrderObjectForDelivery(context: context),
          );
        } else {
          store.dispatch(
            prepareOrderObjectForCollection(context: context),
          );
        }
      }
    } catch (e, s) {
      log.error('ERROR - checkCartForErrors $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - checkCartForErrors $e',
      );
    }
  };
}

ThunkAction<AppState> prepareOrderObjectForDelivery({
  required BuildContext context,
}) {
  return (Store<AppState> store) async {
    try {
      final DeliveryAddresses selectedAddress =
          store.state.cartState.selectedDeliveryAddress!;
      final Map<String, dynamic> orderObject = {}
        ..addAll({
          'items': store.state.cartState.cartItems
              .map(
                (e) => {
                  'id': int.parse(e.menuItem.menuItemID),
                  'quantity': e.itemQuantity,
                  'options': e.selectedProductOptions.map(
                    (key, value) =>
                        MapEntry<String, int>(key.toString(), value.optionID),
                  ),
                },
              )
              .toList(),
          'total': store.state.cartState.cartTotal,
          'tipAmount': store.state.cartState.selectedTipAmount,
          'marketingOptIn': false,
          'discountCode': store.state.cartState.discountCode,
          'vendor': store.state.cartState.restaurantID,
          'walletAddress': store.state.userState.walletAddress,
        })
        ..addAll(
          {
            'address': {
              'name': store.state.userState.displayName,
              'phoneNumber': store.state.userState.phoneNumber,
              'email': store.state.userState.email.isEmpty
                  ? 'email@notprovided.com'
                  : store.state.userState.email,
              'lineOne': selectedAddress.addressLine1,
              'lineTwo': '${selectedAddress.addressLine2}, '
                  '${selectedAddress.townCity}',
              'postCode': selectedAddress.postalCode,
              'deliveryInstructions':
                  store.state.cartState.deliveryInstructions,
            },
            'fulfilmentMethod': store.state.cartState.deliveryMethodId,
            'fulfilmentSlotFrom': formatDateForOrderObject(
              store.state.cartState.selectedTimeSlot.entries.first.value,
            ),
            'fulfilmentSlotTo': formatDateForOrderObject(
              store.state.cartState.selectedTimeSlot.entries.last.value,
            ),
          },
        );

      log.info(orderObject);

      store.dispatch(
        sendOrderObject(
          orderObject: orderObject,
          context: context,
        ),
      );
    } catch (e, s) {
      log.error('ERROR - prepareOrderObjectForDelivery $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - prepareOrderObjectForDelivery $e',
      );
    }
  };
}

ThunkAction<AppState> prepareOrderObjectForCollection({
  required BuildContext context,
}) {
  return (Store<AppState> store) async {
    try {
      final Map<String, dynamic> orderObject = {}
        ..addAll({
          'items': store.state.cartState.cartItems
              .map(
                (e) => {
                  'id': int.parse(e.menuItem.menuItemID),
                  'quantity': e.itemQuantity,
                  'options': e.selectedProductOptions.map(
                    (key, value) =>
                        MapEntry<String, int>(key.toString(), value.optionID),
                  ),
                },
              )
              .toList(),
          'total': store.state.cartState.cartTotal,
          'tipAmount': store.state.cartState.selectedTipAmount,
          'marketingOptIn': false,
          'discountCode': store.state.cartState.discountCode,
          'vendor': store.state.cartState.restaurantID,
          'walletAddress': store.state.userState.walletAddress,
        })
        ..addAll(
          {
            'address': {
              'name': store.state.userState.displayName,
              'email': store.state.userState.email == ''
                  ? 'email@notprovided.com'
                  : store.state.userState.email,
              'phoneNumber': store.state.userState.phoneNumber,
              'lineOne': 'Collection Order',
              'lineTwo': store.state.cartState.restaurantAddress!.shortAddress,
              'postCode': store.state.cartState.restaurantAddress!.postalCode,
              'deliveryInstructions':
                  store.state.cartState.deliveryInstructions,
            },
            'fulfilmentMethod': store.state.cartState.collectionMethodId,
            'fulfilmentSlotFrom': formatDateForOrderObject(
              store.state.cartState.selectedTimeSlot.entries.first.value,
            ),
            'fulfilmentSlotTo': formatDateForOrderObject(
              store.state.cartState.selectedTimeSlot.entries.last.value,
            ),
          },
        );

      log.info(orderObject);
      store.dispatch(
        sendOrderObject(orderObject: orderObject, context: context),
      );
    } catch (e, s) {
      log.error('ERROR - prepareOrderObjectForCollection $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - prepareOrderObjectForCollection $e',
      );
    }
  };
}

ThunkAction<AppState> sendOrderObject({
  required Map<String, dynamic> orderObject,
  required BuildContext context,
}) {
  return (Store<AppState> store) async {
    try {
      store.dispatch(SetPaymentButtonFlag(true));
      final Map<String, dynamic> result =
          await peeplEatsService.createOrder(orderObject).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          return {};
        },
      );

      if (result.isEmpty) {
        showErrorSnack(context: context, title: 'The operation has timed out');
      } else {
        log.info('Order Result $result');
        final Map<String, dynamic> checkResult = await peeplPayService
            .checkOrderValidity(result['paymentIntentID'] as String);

        final Map<String, dynamic> paymentIntent =
            checkResult['paymentIntent'] as Map<String, dynamic>;

        if (paymentIntent['amount'] != store.state.cartState.cartTotal) {
          showErrorSnack(
            context: context,
            title: "Order totals aren't matching",
          );
        } else {
          store
            ..dispatch(
              CreateOrder(
                result['orderID'].toString(),
                result['paymentIntentID'] as String,
              ),
            )
            ..dispatch(startPaymentProcess(context: context));
        }
      }
    } on DioError catch (e) {
      store.dispatch(SetPaymentButtonFlag(false));
      if (e.response != null) {
        log.error(e.response!.data);
        await Sentry.captureException(
          e,
          hint: 'DioError - sendOrderObject - '
              "${e.response!.data['cause']['code']}",
        );
        showErrorSnack(
          context: context,
          title: getErrorMessageForOrder(
            e.response!.data['cause']['code'] as String,
          ),
        );
      }
    } catch (e, s) {
      store.dispatch(SetPaymentButtonFlag(false));
      log.error('ERROR - sendOrderObject $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - sendOrderObject $e',
      );
    }
  };
}

ThunkAction<AppState> startPaymentProcess({
  required BuildContext context,
}) {
  return (Store<AppState> store) async {
    try {
      //TODO: start payment process on the guide here
      // if (store.state.cartState.selectedPaymentMethod == PaymentMethod.stripe) {
      //   await stripeService
      //       .handleStripe(
      //     walletAddress: store.state.userState.walletAddress,
      //     amount: store.state.cartState.cartTotal,
      //     context: context,
      //     shouldPushToHome: false,
      //   )
      //       .then(
      //     (value) {
      //       if (!value) {
      //         store.dispatch(SetTransferringPayment(flag: value));
      //         return;
      //       }
      //       store
      //         ..dispatch(
      //           UpdateSelectedAmounts(
      //             gbpxAmount: (store.state.cartState.cartTotal) / 100,
      //             pplAmount: 0,
      //           ),
      //         )
      //         ..dispatch(
      //           startTokenPaymentToRestaurant(
      //             context: context,
      //           ),
      //         );
      //     },
      //   );
      // } else if (store.state.cartState.selectedPaymentMethod ==
      //     PaymentMethod.peeplPay) {
      //   //show the peepl pay sheet
      //   //user selects to pay with peepl rewards or GBPx
      //   //if gbpx is not enough -> stripe payment until GBPx gets added.
      //   //transfer tokens
      //   //show loading popup
      //   //show order confirmed

      //   await showModalBottomSheet<Widget>(
      //     isScrollControlled: true,
      //     backgroundColor: Colors.grey[900],
      //     shape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.vertical(
      //         top: Radius.circular(20),
      //       ),
      //     ),
      //     elevation: 5,
      //     context: context,
      //     builder: (context) => const PaymentSheet(),
      //   );
      // }
    } catch (e, s) {
      store.dispatch(SetPaymentButtonFlag(false));
      log.error('ERROR - sendOrderObject $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - sendOrderObject $e',
      );
    }
  };
}

ThunkAction<AppState> startPaymentConfirmationCheck() {
  return (Store<AppState> store) async {
    int counter = 0;
    Timer.periodic(
      const Duration(seconds: 4),
      (timer) async {
        try {
          final Future<Map<dynamic, dynamic>> checkOrderResponse =
              peeplEatsService.checkOrderStatus(store.state.cartState.orderID);

          await checkOrderResponse.then(
            (completedValue) {
              counter++;
              log.info(
                'PaymentStatus: ${completedValue["paymentStatus"]}, '
                'counter: $counter',
              );
              if (completedValue['paymentStatus'] == 'paid') {
                store
                  ..dispatch(SetTransferringPayment(flag: false))
                  ..dispatch(SetConfirmed(flag: true));
                timer.cancel();
              }
            },
          );

          if (counter > 10) {
            timer.cancel();
            throw Exception('Payment checks exceeded time limit: '
                'orderID: ${store.state.cartState.orderID}');
          }
        } catch (e, s) {
          store.dispatch(SetError(flag: true));
          log.error('ERROR - startPaymentConfirmationCheck $e');
          await Sentry.captureException(
            e,
            stackTrace: s,
            hint: 'ERROR - startPaymentConfirmationCheck $e',
          );
        }
      },
    );
  };
}

ThunkAction<AppState> setRestaurantDetails({
  required String restaurantID,
  required String restaurantName,
  required DeliveryAddresses restaurantAddress,
  required String walletAddress,
  required int minimumOrder,
  required int platformFee,
  required VoidCallback sendSnackBar,
}) {
  return (Store<AppState> store) async {
    try {
      //If cart has existing items -> clear cart, set new restaurant details,
      // show snackbar if cart had items.

      if (store.state.cartState.restaurantName.isNotEmpty &&
          store.state.cartState.restaurantID.isNotEmpty) {
        sendSnackBar();
        store
          ..dispatch(ClearCart())
          ..dispatch(
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
      store.dispatch(SetError(flag: true));
      log.error('ERROR - setRestaurantDetails $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - setRestaurantDetails $e',
      );
    }
  };
}

ThunkAction<AppState> updateInstructions({
  required String instructions,
  required void Function() successCallback,
  required void Function() errorCallback,
}) {
  return (Store<AppState> store) async {
    try {
      store.dispatch(SetDeliveryInstructions(instructions));
      successCallback();
    } catch (e, s) {
      log.error('ERROR - updateInstructions $e');
      errorCallback();
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - updateInstructions $e',
      );
    }
  };
}

ThunkAction<AppState> removeInstructions() {
  return (Store<AppState> store) async {
    try {
      store.dispatch(SetDeliveryInstructions(''));
    } catch (e, s) {
      log.error('ERROR - removeInstructions $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - removeInstructions $e',
      );
    }
  };
}

ThunkAction<AppState> setDeliveryAddress({
  required int id,
}) {
  return (Store<AppState> store) async {
    try {
      final address = store.state.userState.listOfDeliveryAddresses
          .where((element) => element.internalID == id)
          .first;
      store.dispatch(UpdateSelectedDeliveryAddress(address));
    } catch (e, s) {
      log.error('ERROR - setDeliveryAddress $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - setDeliveryAddress $e',
      );
    }
  };
}

ThunkAction startCheckTimer(
    VoidCallback successCallback, VoidCallback errorCallback) {
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
                store.dispatch(SetTransferringPayment(flag: false));
                store.dispatch(SetConfirmed(flag: true));
                successCallback();
                timer.cancel();
              }
            },
          );
        },
      );
    } catch (e, s) {
      store.dispatch(SetError(flag: true));
      log.error('ERROR - sendTokenPayment $e');
      await Sentry.captureException(
        e,
        stackTrace: s,
        hint: 'ERROR - sendTokenPayment $e',
      );
    }
  };
}

// ThunkAction prepareAndSendOrder(void Function(String errorText) errorCallback,
//     VoidCallback successCallback) {
//   return (Store store) async {
//     int temp = ((store.state.cartState.cartSubTotal *
//             store.state.cartState.cartDiscountPercent) ~/
//         100);

//     try {
//       if (store.state.cartState.fulfilmentMethod == FulfilmentMethod.none) {
//         errorCallback("Please select or create an address");
//         return;
//       } else if (store.state.cartState.selectedTimeSlot.isEmpty) {
//         errorCallback("Please select a time slot");
//         return;
//       } else if (store.state.cartState.restaurantMinimumOrder >
//           store.state.cartState.cartSubTotal - temp) {
//         errorCallback("Your order does not satisfy the minimum order amount");
//         return;
//       }

//       Map<String, dynamic> orderObject = {};

//       orderObject.addAll({
//         "items": store.state.cartState.cartItems
//             .map(
//               (e) => {
//                 "id": int.parse(e.menuItem.menuItemID),
//                 "quantity": e.itemQuantity,
//                 "options": e.selectedProductOptions.map(
//                   (key, value) =>
//                       MapEntry<String, int>(key.toString(), value.optionID),
//                 ),
//               },
//             )
//             .toList(),
//         "total": store.state.cartState.cartTotal,
//         "tipAmount": store.state.cartState.selectedTipAmount * 100,
//         "marketingOptIn": false,
//         "discountCode": store.state.cartState.discountCode,
//         "vendor": store.state.cartState.restaurantID,
//         "walletAddress": store.state.cartState.userWalletAddress
//       });

//       if (store.state.cartState.fulfilmentMethod == FulfilmentMethod.delivery) {
//         if (store.state.cartState.selectedDeliveryAddress == null) {
//           errorCallback("Please select an address");
//           return;
//         }
//         DeliveryAddresses selectedAddress =
//             store.state.cartState.selectedDeliveryAddress!;

//         orderObject.addAll(
//           {
//             "address": {
//               "name": store.state.cartState.userDisplayName,
//               "phoneNumber": selectedAddress.phoneNumber ?? "",
//               "email": "email@notprovided.com",
//               "lineOne": selectedAddress.addressLine1,
//               "lineTwo": selectedAddress.addressLine2 +
//                   ", " +
//                   selectedAddress.townCity,
//               "postCode": selectedAddress.postalCode,
//               "deliveryInstructions":
//                   store.state.cartState.deliveryInstructions,
//             },
//             "fulfilmentMethod": store.state.cartState.deliveryMethodId,
//             "fulfilmentSlotFrom": formatDateForOrderObject(
//                 store.state.cartState.selectedTimeSlot.entries.first.value),
//             "fulfilmentSlotTo": formatDateForOrderObject(
//                 store.state.cartState.selectedTimeSlot.entries.last.value),
//           },
//         );
//       } else if (store.state.cartState.fulfilmentMethod ==
//           FulfilmentMethod.collection) {
//         orderObject.addAll(
//           {
//             "address": {
//               "name": store.state.cartState.userDisplayName,
//               "email": "email@notprovided.com",
//               "phoneNumber": "12345678",
//               "lineOne": "Collection Order",
//               "lineTwo": "",
//               "postCode": "L7 0HG",
//               "deliveryInstructions":
//                   store.state.cartState.deliveryInstructions,
//             },
//             "fulfilmentMethod": store.state.cartState.collectionMethodId,
//             "fulfilmentSlotFrom": formatDateForOrderObject(
//                 store.state.cartState.selectedTimeSlot.entries.first.value),
//             "fulfilmentSlotTo": formatDateForOrderObject(
//                 store.state.cartState.selectedTimeSlot.entries.last.value),
//           },
//         );
//       }

//       print("Order Object Created: ${json.encode(orderObject).toString()}");

//       //Call create order API with prepared orderobject
//       Map result = await peeplEatsService
//           .createOrder(orderObject)
//           .timeout(Duration(seconds: 10), onTimeout: () {
//         return {}; //return empty map on timeout to trigger errorCallback
//       });

//       if (result.isNotEmpty) {
//         store.dispatch(UpdatePaymentIntentID(result['paymentIntentID']));
//         //Call Peepl Pay API to start checking the paymentIntentID
//         Map checkResult = await peeplPayService
//             .startPaymentIntentCheck(result['paymentIntentID']);

//         print("Order Result $result");

//         //Crosscheck the PaymentIntentID with the amount calculcated on device.
//         if (checkResult['paymentIntent']['amount'] ==
//             store.state.cartState.cartTotal) {
//           store.dispatch(CreateOrder(
//               result['orderID'].toString(), result['paymentIntentID']));

//           //Payment Function that calls the actual app payment sheet
//           paymentFunction(result['paymentIntentID']);
//           successCallback();
//         } else {
//           //check if it is better to just update the total value with the api returned or return an error
//           errorCallback("Order totals aren't matching");
//         }
//       } else {
//         errorCallback("Our servers seem to be down");
//       }
//     } on DioError catch (e) {
//       if (e.response != null) {
//         print(e.response!.data);
//         errorCallback(
//             getErrorMessageForOrder(e.response!.data['cause']['code']));
//       }
//     } catch (e, s) {
//       errorCallback("Something went wrong");
//       log.error('ERROR - prepareAndSendOrder $e');
//       await Sentry.captureException(
//         e,
//         stackTrace: s,
//         hint: 'ERROR - prepareAndSendOrder $e',
//       );
//     }
//   };
// }