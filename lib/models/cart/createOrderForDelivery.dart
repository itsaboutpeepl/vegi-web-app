import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/extensions.dart';
import 'package:vegan_liverpool/models/cart/createOrderForFulfilment.dart';
import 'package:vegan_liverpool/models/restaurant/cartItem.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';

part 'createOrderForDelivery.freezed.dart';
part 'createOrderForDelivery.g.dart';

@Freezed()
class CreateOrderForDelivery extends CreateOrderForFulfilment
    with _$CreateOrderForDelivery {
  @JsonSerializable()
  factory CreateOrderForDelivery({
    required List<CartItem> items,
    required int total,
    required int tipAmount,
    required bool marketingOptIn,
    required String discountCode,
    required String vendor,
    required String walletAddress,
    required DeliveryAddresses address,
    required int fulfilmentMethod,
    required String fulfilmentSlotFrom,
    required String fulfilmentSlotTo,
  }) = _CreateOrderForDelivery;

  CreateOrderForDelivery._();

  factory CreateOrderForDelivery.fromStore(Store<AppState> store) {
    final DeliveryAddresses selectedAddress =
        store.state.cartState.selectedDeliveryAddress!;
    return CreateOrderForDelivery(
        items: store.state.cartState.cartItems,
        total: store.state.cartState.cartTotal,
        tipAmount: store.state.cartState.selectedTipAmount,
        marketingOptIn: false,
        discountCode: store.state.cartState.discountCode,
        vendor: store.state.cartState.restaurantID,
        walletAddress: store.state.userState.walletAddress,
        address: selectedAddress.copyWith(
          name: store.state.userState.displayName,
          phoneNumber: store.state.userState.phoneNumber,
          email: store.state.userState.email.isEmpty
              ? 'email@notprovided.com'
              : store.state.userState.email,
          instructions: store.state.cartState.deliveryInstructions,
        ),
        fulfilmentMethod:
            store.state.cartState.selectedTimeSlot!.fulfilmentMethodId,
        fulfilmentSlotFrom:
            store.state.cartState.selectedTimeSlot!.startTime.formattedForAPI,
        fulfilmentSlotTo: store.state.cartState.selectedTimeSlot!.endTime
            .formattedForAPI //TODO: check
        );
  }
}
