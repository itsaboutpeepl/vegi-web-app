import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegan_liverpool/constants/enums.dart';
import 'package:vegan_liverpool/models/restaurant/cartItem.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';
import 'package:vegan_liverpool/models/restaurant/payment_methods.dart';
import 'package:vegan_liverpool/models/restaurant/time_slot.dart';

part 'user_cart_state.freezed.dart';
part 'user_cart_state.g.dart';

@Freezed()
class UserCartState with _$UserCartState {
  @JsonSerializable()
  factory UserCartState({
    @Default([]) List<CartItem> cartItems,
    @Default(0) int cartSubTotal,
    @Default(0) int cartTax,
    @Default(0) int cartTotal,
    @Default(0) int cartDiscountPercent,
    @Default(0) int cartDiscountComputed,
    @Default([]) List<TimeSlot> deliverySlots,
    @Default([]) List<TimeSlot> collectionSlots,
    @Default(null) DeliveryAddresses? selectedDeliveryAddress,
    @Default(null) TimeSlot? selectedTimeSlot,
    @Default(0) int selectedTipAmount,
    @Default('') String discountCode,
    @Default('') String paymentIntentID,
    @Default('') String orderID,
    @Default(0.0) double selectedGBPxAmount,
    @Default(0.0) double selectedPPLAmount,
    @Default(false) bool payButtonLoading,
    @Default(false) bool transferringTokens,
    @Default(false) bool errorCompletingPayment,
    @Default(false) bool confirmedPayment,
    @Default('') String restaurantName,
    @Default('') String restaurantID,
    @Default(null) DeliveryAddresses? restaurantAddress,
    @Default('') String restaurantWalletAddress,
    @Default(0) int deliveryCharge,
    @Default(0) int collectionCharge,
    @Default(FulfilmentMethod.delivery) FulfilmentMethod fulfilmentMethod,
    @Default(false) bool isDelivery,
    @Default(0) int restaurantMinimumOrder,
    @Default(0) int restaurantPlatformFee,
    @Default('') String deliveryInstructions,
    @Default(null) PaymentMethod? selectedPaymentMethod,
    @Default([]) List<String> fulfilmentPostalDistricts,
    @Default([]) List<DateTime> eligibleOrderDates,
    @Default(null) TimeSlot? nextCollectionSlot,
    @Default(null) TimeSlot? nextDeliverySlot,
  }) = _UserCartState;

  const UserCartState._();

  factory UserCartState.initial() => UserCartState(
        cartItems: [],
        cartSubTotal: 0,
        cartTax: 0,
        cartTotal: 0,
        cartDiscountPercent: 0,
        cartDiscountComputed: 0,
        deliverySlots: [],
        collectionSlots: [],
        selectedTipAmount: 0,
        discountCode: '',
        paymentIntentID: '',
        orderID: '',
        selectedGBPxAmount: 0,
        selectedPPLAmount: 0,
        payButtonLoading: false,
        transferringTokens: false,
        errorCompletingPayment: false,
        confirmedPayment: false,
        restaurantName: '',
        restaurantID: '',
        restaurantWalletAddress: '',
        deliveryCharge: 0,
        collectionCharge: 0,
        fulfilmentMethod: FulfilmentMethod.delivery,
        isDelivery: false,
      );

  factory UserCartState.fromJson(Map<String, dynamic> json) =>
      _$UserCartStateFromJson(json);
}

class UserCartStateConverter
    implements JsonConverter<UserCartState, Map<String, dynamic>?> {
  const UserCartStateConverter();

  @override
  UserCartState fromJson(Map<String, dynamic>? json) =>
      json != null ? UserCartState.fromJson(json) : UserCartState.initial();

  @override
  Map<String, dynamic> toJson(UserCartState instance) => instance.toJson();
}
