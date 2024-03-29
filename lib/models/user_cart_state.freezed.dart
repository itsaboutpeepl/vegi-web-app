// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCartState _$UserCartStateFromJson(Map<String, dynamic> json) {
  return _UserCartState.fromJson(json);
}

/// @nodoc
mixin _$UserCartState {
  List<CartItem> get cartItems => throw _privateConstructorUsedError;
  int get cartSubTotal => throw _privateConstructorUsedError;
  int get cartTax => throw _privateConstructorUsedError;
  int get cartTotal => throw _privateConstructorUsedError;
  int get cartDiscountPercent => throw _privateConstructorUsedError;
  int get cartDiscountComputed => throw _privateConstructorUsedError;
  List<TimeSlot> get deliverySlots => throw _privateConstructorUsedError;
  List<TimeSlot> get collectionSlots => throw _privateConstructorUsedError;
  DeliveryAddresses? get selectedDeliveryAddress =>
      throw _privateConstructorUsedError;
  TimeSlot? get selectedTimeSlot => throw _privateConstructorUsedError;
  int get selectedTipAmount => throw _privateConstructorUsedError;
  String get discountCode => throw _privateConstructorUsedError;
  String get paymentIntentID => throw _privateConstructorUsedError;
  String get orderID => throw _privateConstructorUsedError;
  double get selectedGBPxAmount => throw _privateConstructorUsedError;
  double get selectedPPLAmount => throw _privateConstructorUsedError;
  bool get payButtonLoading => throw _privateConstructorUsedError;
  bool get transferringTokens => throw _privateConstructorUsedError;
  bool get errorCompletingPayment => throw _privateConstructorUsedError;
  bool get confirmedPayment => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  String get restaurantID => throw _privateConstructorUsedError;
  DeliveryAddresses? get restaurantAddress =>
      throw _privateConstructorUsedError;
  String get restaurantWalletAddress => throw _privateConstructorUsedError;
  FulfilmentMethodType get fulfilmentMethod =>
      throw _privateConstructorUsedError;
  bool get isDelivery => throw _privateConstructorUsedError;
  int get restaurantMinimumOrder => throw _privateConstructorUsedError;
  int get restaurantPlatformFee => throw _privateConstructorUsedError;
  String get deliveryInstructions => throw _privateConstructorUsedError;
  PaymentMethod? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;
  List<String> get fulfilmentPostalDistricts =>
      throw _privateConstructorUsedError;
  List<DateTime> get eligibleOrderDates => throw _privateConstructorUsedError;
  TimeSlot? get nextCollectionSlot => throw _privateConstructorUsedError;
  TimeSlot? get nextDeliverySlot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCartStateCopyWith<UserCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCartStateCopyWith<$Res> {
  factory $UserCartStateCopyWith(
          UserCartState value, $Res Function(UserCartState) then) =
      _$UserCartStateCopyWithImpl<$Res>;
  $Res call(
      {List<CartItem> cartItems,
      int cartSubTotal,
      int cartTax,
      int cartTotal,
      int cartDiscountPercent,
      int cartDiscountComputed,
      List<TimeSlot> deliverySlots,
      List<TimeSlot> collectionSlots,
      DeliveryAddresses? selectedDeliveryAddress,
      TimeSlot? selectedTimeSlot,
      int selectedTipAmount,
      String discountCode,
      String paymentIntentID,
      String orderID,
      double selectedGBPxAmount,
      double selectedPPLAmount,
      bool payButtonLoading,
      bool transferringTokens,
      bool errorCompletingPayment,
      bool confirmedPayment,
      String restaurantName,
      String restaurantID,
      DeliveryAddresses? restaurantAddress,
      String restaurantWalletAddress,
      FulfilmentMethodType fulfilmentMethod,
      bool isDelivery,
      int restaurantMinimumOrder,
      int restaurantPlatformFee,
      String deliveryInstructions,
      PaymentMethod? selectedPaymentMethod,
      List<String> fulfilmentPostalDistricts,
      List<DateTime> eligibleOrderDates,
      TimeSlot? nextCollectionSlot,
      TimeSlot? nextDeliverySlot});

  $DeliveryAddressesCopyWith<$Res>? get selectedDeliveryAddress;
  $TimeSlotCopyWith<$Res>? get selectedTimeSlot;
  $DeliveryAddressesCopyWith<$Res>? get restaurantAddress;
  $TimeSlotCopyWith<$Res>? get nextCollectionSlot;
  $TimeSlotCopyWith<$Res>? get nextDeliverySlot;
}

/// @nodoc
class _$UserCartStateCopyWithImpl<$Res>
    implements $UserCartStateCopyWith<$Res> {
  _$UserCartStateCopyWithImpl(this._value, this._then);

  final UserCartState _value;
  // ignore: unused_field
  final $Res Function(UserCartState) _then;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? cartSubTotal = freezed,
    Object? cartTax = freezed,
    Object? cartTotal = freezed,
    Object? cartDiscountPercent = freezed,
    Object? cartDiscountComputed = freezed,
    Object? deliverySlots = freezed,
    Object? collectionSlots = freezed,
    Object? selectedDeliveryAddress = freezed,
    Object? selectedTimeSlot = freezed,
    Object? selectedTipAmount = freezed,
    Object? discountCode = freezed,
    Object? paymentIntentID = freezed,
    Object? orderID = freezed,
    Object? selectedGBPxAmount = freezed,
    Object? selectedPPLAmount = freezed,
    Object? payButtonLoading = freezed,
    Object? transferringTokens = freezed,
    Object? errorCompletingPayment = freezed,
    Object? confirmedPayment = freezed,
    Object? restaurantName = freezed,
    Object? restaurantID = freezed,
    Object? restaurantAddress = freezed,
    Object? restaurantWalletAddress = freezed,
    Object? fulfilmentMethod = freezed,
    Object? isDelivery = freezed,
    Object? restaurantMinimumOrder = freezed,
    Object? restaurantPlatformFee = freezed,
    Object? deliveryInstructions = freezed,
    Object? selectedPaymentMethod = freezed,
    Object? fulfilmentPostalDistricts = freezed,
    Object? eligibleOrderDates = freezed,
    Object? nextCollectionSlot = freezed,
    Object? nextDeliverySlot = freezed,
  }) {
    return _then(_value.copyWith(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      cartSubTotal: cartSubTotal == freezed
          ? _value.cartSubTotal
          : cartSubTotal // ignore: cast_nullable_to_non_nullable
              as int,
      cartTax: cartTax == freezed
          ? _value.cartTax
          : cartTax // ignore: cast_nullable_to_non_nullable
              as int,
      cartTotal: cartTotal == freezed
          ? _value.cartTotal
          : cartTotal // ignore: cast_nullable_to_non_nullable
              as int,
      cartDiscountPercent: cartDiscountPercent == freezed
          ? _value.cartDiscountPercent
          : cartDiscountPercent // ignore: cast_nullable_to_non_nullable
              as int,
      cartDiscountComputed: cartDiscountComputed == freezed
          ? _value.cartDiscountComputed
          : cartDiscountComputed // ignore: cast_nullable_to_non_nullable
              as int,
      deliverySlots: deliverySlots == freezed
          ? _value.deliverySlots
          : deliverySlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      collectionSlots: collectionSlots == freezed
          ? _value.collectionSlots
          : collectionSlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      selectedDeliveryAddress: selectedDeliveryAddress == freezed
          ? _value.selectedDeliveryAddress
          : selectedDeliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddresses?,
      selectedTimeSlot: selectedTimeSlot == freezed
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      selectedTipAmount: selectedTipAmount == freezed
          ? _value.selectedTipAmount
          : selectedTipAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountCode: discountCode == freezed
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntentID: paymentIntentID == freezed
          ? _value.paymentIntentID
          : paymentIntentID // ignore: cast_nullable_to_non_nullable
              as String,
      orderID: orderID == freezed
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
      selectedGBPxAmount: selectedGBPxAmount == freezed
          ? _value.selectedGBPxAmount
          : selectedGBPxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      selectedPPLAmount: selectedPPLAmount == freezed
          ? _value.selectedPPLAmount
          : selectedPPLAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payButtonLoading: payButtonLoading == freezed
          ? _value.payButtonLoading
          : payButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transferringTokens: transferringTokens == freezed
          ? _value.transferringTokens
          : transferringTokens // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCompletingPayment: errorCompletingPayment == freezed
          ? _value.errorCompletingPayment
          : errorCompletingPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmedPayment: confirmedPayment == freezed
          ? _value.confirmedPayment
          : confirmedPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurantName: restaurantName == freezed
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantID: restaurantID == freezed
          ? _value.restaurantID
          : restaurantID // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantAddress: restaurantAddress == freezed
          ? _value.restaurantAddress
          : restaurantAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddresses?,
      restaurantWalletAddress: restaurantWalletAddress == freezed
          ? _value.restaurantWalletAddress
          : restaurantWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      fulfilmentMethod: fulfilmentMethod == freezed
          ? _value.fulfilmentMethod
          : fulfilmentMethod // ignore: cast_nullable_to_non_nullable
              as FulfilmentMethodType,
      isDelivery: isDelivery == freezed
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurantMinimumOrder: restaurantMinimumOrder == freezed
          ? _value.restaurantMinimumOrder
          : restaurantMinimumOrder // ignore: cast_nullable_to_non_nullable
              as int,
      restaurantPlatformFee: restaurantPlatformFee == freezed
          ? _value.restaurantPlatformFee
          : restaurantPlatformFee // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryInstructions: deliveryInstructions == freezed
          ? _value.deliveryInstructions
          : deliveryInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPaymentMethod: selectedPaymentMethod == freezed
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      fulfilmentPostalDistricts: fulfilmentPostalDistricts == freezed
          ? _value.fulfilmentPostalDistricts
          : fulfilmentPostalDistricts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eligibleOrderDates: eligibleOrderDates == freezed
          ? _value.eligibleOrderDates
          : eligibleOrderDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      nextCollectionSlot: nextCollectionSlot == freezed
          ? _value.nextCollectionSlot
          : nextCollectionSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      nextDeliverySlot: nextDeliverySlot == freezed
          ? _value.nextDeliverySlot
          : nextDeliverySlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
    ));
  }

  @override
  $DeliveryAddressesCopyWith<$Res>? get selectedDeliveryAddress {
    if (_value.selectedDeliveryAddress == null) {
      return null;
    }

    return $DeliveryAddressesCopyWith<$Res>(_value.selectedDeliveryAddress!,
        (value) {
      return _then(_value.copyWith(selectedDeliveryAddress: value));
    });
  }

  @override
  $TimeSlotCopyWith<$Res>? get selectedTimeSlot {
    if (_value.selectedTimeSlot == null) {
      return null;
    }

    return $TimeSlotCopyWith<$Res>(_value.selectedTimeSlot!, (value) {
      return _then(_value.copyWith(selectedTimeSlot: value));
    });
  }

  @override
  $DeliveryAddressesCopyWith<$Res>? get restaurantAddress {
    if (_value.restaurantAddress == null) {
      return null;
    }

    return $DeliveryAddressesCopyWith<$Res>(_value.restaurantAddress!, (value) {
      return _then(_value.copyWith(restaurantAddress: value));
    });
  }

  @override
  $TimeSlotCopyWith<$Res>? get nextCollectionSlot {
    if (_value.nextCollectionSlot == null) {
      return null;
    }

    return $TimeSlotCopyWith<$Res>(_value.nextCollectionSlot!, (value) {
      return _then(_value.copyWith(nextCollectionSlot: value));
    });
  }

  @override
  $TimeSlotCopyWith<$Res>? get nextDeliverySlot {
    if (_value.nextDeliverySlot == null) {
      return null;
    }

    return $TimeSlotCopyWith<$Res>(_value.nextDeliverySlot!, (value) {
      return _then(_value.copyWith(nextDeliverySlot: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserCartStateCopyWith<$Res>
    implements $UserCartStateCopyWith<$Res> {
  factory _$$_UserCartStateCopyWith(
          _$_UserCartState value, $Res Function(_$_UserCartState) then) =
      __$$_UserCartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CartItem> cartItems,
      int cartSubTotal,
      int cartTax,
      int cartTotal,
      int cartDiscountPercent,
      int cartDiscountComputed,
      List<TimeSlot> deliverySlots,
      List<TimeSlot> collectionSlots,
      DeliveryAddresses? selectedDeliveryAddress,
      TimeSlot? selectedTimeSlot,
      int selectedTipAmount,
      String discountCode,
      String paymentIntentID,
      String orderID,
      double selectedGBPxAmount,
      double selectedPPLAmount,
      bool payButtonLoading,
      bool transferringTokens,
      bool errorCompletingPayment,
      bool confirmedPayment,
      String restaurantName,
      String restaurantID,
      DeliveryAddresses? restaurantAddress,
      String restaurantWalletAddress,
      FulfilmentMethodType fulfilmentMethod,
      bool isDelivery,
      int restaurantMinimumOrder,
      int restaurantPlatformFee,
      String deliveryInstructions,
      PaymentMethod? selectedPaymentMethod,
      List<String> fulfilmentPostalDistricts,
      List<DateTime> eligibleOrderDates,
      TimeSlot? nextCollectionSlot,
      TimeSlot? nextDeliverySlot});

  @override
  $DeliveryAddressesCopyWith<$Res>? get selectedDeliveryAddress;
  @override
  $TimeSlotCopyWith<$Res>? get selectedTimeSlot;
  @override
  $DeliveryAddressesCopyWith<$Res>? get restaurantAddress;
  @override
  $TimeSlotCopyWith<$Res>? get nextCollectionSlot;
  @override
  $TimeSlotCopyWith<$Res>? get nextDeliverySlot;
}

/// @nodoc
class __$$_UserCartStateCopyWithImpl<$Res>
    extends _$UserCartStateCopyWithImpl<$Res>
    implements _$$_UserCartStateCopyWith<$Res> {
  __$$_UserCartStateCopyWithImpl(
      _$_UserCartState _value, $Res Function(_$_UserCartState) _then)
      : super(_value, (v) => _then(v as _$_UserCartState));

  @override
  _$_UserCartState get _value => super._value as _$_UserCartState;

  @override
  $Res call({
    Object? cartItems = freezed,
    Object? cartSubTotal = freezed,
    Object? cartTax = freezed,
    Object? cartTotal = freezed,
    Object? cartDiscountPercent = freezed,
    Object? cartDiscountComputed = freezed,
    Object? deliverySlots = freezed,
    Object? collectionSlots = freezed,
    Object? selectedDeliveryAddress = freezed,
    Object? selectedTimeSlot = freezed,
    Object? selectedTipAmount = freezed,
    Object? discountCode = freezed,
    Object? paymentIntentID = freezed,
    Object? orderID = freezed,
    Object? selectedGBPxAmount = freezed,
    Object? selectedPPLAmount = freezed,
    Object? payButtonLoading = freezed,
    Object? transferringTokens = freezed,
    Object? errorCompletingPayment = freezed,
    Object? confirmedPayment = freezed,
    Object? restaurantName = freezed,
    Object? restaurantID = freezed,
    Object? restaurantAddress = freezed,
    Object? restaurantWalletAddress = freezed,
    Object? fulfilmentMethod = freezed,
    Object? isDelivery = freezed,
    Object? restaurantMinimumOrder = freezed,
    Object? restaurantPlatformFee = freezed,
    Object? deliveryInstructions = freezed,
    Object? selectedPaymentMethod = freezed,
    Object? fulfilmentPostalDistricts = freezed,
    Object? eligibleOrderDates = freezed,
    Object? nextCollectionSlot = freezed,
    Object? nextDeliverySlot = freezed,
  }) {
    return _then(_$_UserCartState(
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      cartSubTotal: cartSubTotal == freezed
          ? _value.cartSubTotal
          : cartSubTotal // ignore: cast_nullable_to_non_nullable
              as int,
      cartTax: cartTax == freezed
          ? _value.cartTax
          : cartTax // ignore: cast_nullable_to_non_nullable
              as int,
      cartTotal: cartTotal == freezed
          ? _value.cartTotal
          : cartTotal // ignore: cast_nullable_to_non_nullable
              as int,
      cartDiscountPercent: cartDiscountPercent == freezed
          ? _value.cartDiscountPercent
          : cartDiscountPercent // ignore: cast_nullable_to_non_nullable
              as int,
      cartDiscountComputed: cartDiscountComputed == freezed
          ? _value.cartDiscountComputed
          : cartDiscountComputed // ignore: cast_nullable_to_non_nullable
              as int,
      deliverySlots: deliverySlots == freezed
          ? _value.deliverySlots
          : deliverySlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      collectionSlots: collectionSlots == freezed
          ? _value.collectionSlots
          : collectionSlots // ignore: cast_nullable_to_non_nullable
              as List<TimeSlot>,
      selectedDeliveryAddress: selectedDeliveryAddress == freezed
          ? _value.selectedDeliveryAddress
          : selectedDeliveryAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddresses?,
      selectedTimeSlot: selectedTimeSlot == freezed
          ? _value.selectedTimeSlot
          : selectedTimeSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      selectedTipAmount: selectedTipAmount == freezed
          ? _value.selectedTipAmount
          : selectedTipAmount // ignore: cast_nullable_to_non_nullable
              as int,
      discountCode: discountCode == freezed
          ? _value.discountCode
          : discountCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntentID: paymentIntentID == freezed
          ? _value.paymentIntentID
          : paymentIntentID // ignore: cast_nullable_to_non_nullable
              as String,
      orderID: orderID == freezed
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as String,
      selectedGBPxAmount: selectedGBPxAmount == freezed
          ? _value.selectedGBPxAmount
          : selectedGBPxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      selectedPPLAmount: selectedPPLAmount == freezed
          ? _value.selectedPPLAmount
          : selectedPPLAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payButtonLoading: payButtonLoading == freezed
          ? _value.payButtonLoading
          : payButtonLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transferringTokens: transferringTokens == freezed
          ? _value.transferringTokens
          : transferringTokens // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCompletingPayment: errorCompletingPayment == freezed
          ? _value.errorCompletingPayment
          : errorCompletingPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmedPayment: confirmedPayment == freezed
          ? _value.confirmedPayment
          : confirmedPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurantName: restaurantName == freezed
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantID: restaurantID == freezed
          ? _value.restaurantID
          : restaurantID // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantAddress: restaurantAddress == freezed
          ? _value.restaurantAddress
          : restaurantAddress // ignore: cast_nullable_to_non_nullable
              as DeliveryAddresses?,
      restaurantWalletAddress: restaurantWalletAddress == freezed
          ? _value.restaurantWalletAddress
          : restaurantWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      fulfilmentMethod: fulfilmentMethod == freezed
          ? _value.fulfilmentMethod
          : fulfilmentMethod // ignore: cast_nullable_to_non_nullable
              as FulfilmentMethodType,
      isDelivery: isDelivery == freezed
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurantMinimumOrder: restaurantMinimumOrder == freezed
          ? _value.restaurantMinimumOrder
          : restaurantMinimumOrder // ignore: cast_nullable_to_non_nullable
              as int,
      restaurantPlatformFee: restaurantPlatformFee == freezed
          ? _value.restaurantPlatformFee
          : restaurantPlatformFee // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryInstructions: deliveryInstructions == freezed
          ? _value.deliveryInstructions
          : deliveryInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPaymentMethod: selectedPaymentMethod == freezed
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      fulfilmentPostalDistricts: fulfilmentPostalDistricts == freezed
          ? _value.fulfilmentPostalDistricts
          : fulfilmentPostalDistricts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      eligibleOrderDates: eligibleOrderDates == freezed
          ? _value.eligibleOrderDates
          : eligibleOrderDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      nextCollectionSlot: nextCollectionSlot == freezed
          ? _value.nextCollectionSlot
          : nextCollectionSlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
      nextDeliverySlot: nextDeliverySlot == freezed
          ? _value.nextDeliverySlot
          : nextDeliverySlot // ignore: cast_nullable_to_non_nullable
              as TimeSlot?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_UserCartState extends _UserCartState {
  _$_UserCartState(
      {this.cartItems = const [],
      this.cartSubTotal = 0,
      this.cartTax = 0,
      this.cartTotal = 0,
      this.cartDiscountPercent = 0,
      this.cartDiscountComputed = 0,
      this.deliverySlots = const [],
      this.collectionSlots = const [],
      this.selectedDeliveryAddress = null,
      this.selectedTimeSlot = null,
      this.selectedTipAmount = 0,
      this.discountCode = '',
      this.paymentIntentID = '',
      this.orderID = '',
      this.selectedGBPxAmount = 0.0,
      this.selectedPPLAmount = 0.0,
      this.payButtonLoading = false,
      this.transferringTokens = false,
      this.errorCompletingPayment = false,
      this.confirmedPayment = false,
      this.restaurantName = '',
      this.restaurantID = '',
      this.restaurantAddress = null,
      this.restaurantWalletAddress = '',
      this.fulfilmentMethod = FulfilmentMethodType.delivery,
      this.isDelivery = false,
      this.restaurantMinimumOrder = 0,
      this.restaurantPlatformFee = 0,
      this.deliveryInstructions = '',
      this.selectedPaymentMethod = null,
      this.fulfilmentPostalDistricts = const [],
      this.eligibleOrderDates = const [],
      this.nextCollectionSlot = null,
      this.nextDeliverySlot = null})
      : super._();

  factory _$_UserCartState.fromJson(Map<String, dynamic> json) =>
      _$$_UserCartStateFromJson(json);

  @override
  @JsonKey()
  final List<CartItem> cartItems;
  @override
  @JsonKey()
  final int cartSubTotal;
  @override
  @JsonKey()
  final int cartTax;
  @override
  @JsonKey()
  final int cartTotal;
  @override
  @JsonKey()
  final int cartDiscountPercent;
  @override
  @JsonKey()
  final int cartDiscountComputed;
  @override
  @JsonKey()
  final List<TimeSlot> deliverySlots;
  @override
  @JsonKey()
  final List<TimeSlot> collectionSlots;
  @override
  @JsonKey()
  final DeliveryAddresses? selectedDeliveryAddress;
  @override
  @JsonKey()
  final TimeSlot? selectedTimeSlot;
  @override
  @JsonKey()
  final int selectedTipAmount;
  @override
  @JsonKey()
  final String discountCode;
  @override
  @JsonKey()
  final String paymentIntentID;
  @override
  @JsonKey()
  final String orderID;
  @override
  @JsonKey()
  final double selectedGBPxAmount;
  @override
  @JsonKey()
  final double selectedPPLAmount;
  @override
  @JsonKey()
  final bool payButtonLoading;
  @override
  @JsonKey()
  final bool transferringTokens;
  @override
  @JsonKey()
  final bool errorCompletingPayment;
  @override
  @JsonKey()
  final bool confirmedPayment;
  @override
  @JsonKey()
  final String restaurantName;
  @override
  @JsonKey()
  final String restaurantID;
  @override
  @JsonKey()
  final DeliveryAddresses? restaurantAddress;
  @override
  @JsonKey()
  final String restaurantWalletAddress;
  @override
  @JsonKey()
  final FulfilmentMethodType fulfilmentMethod;
  @override
  @JsonKey()
  final bool isDelivery;
  @override
  @JsonKey()
  final int restaurantMinimumOrder;
  @override
  @JsonKey()
  final int restaurantPlatformFee;
  @override
  @JsonKey()
  final String deliveryInstructions;
  @override
  @JsonKey()
  final PaymentMethod? selectedPaymentMethod;
  @override
  @JsonKey()
  final List<String> fulfilmentPostalDistricts;
  @override
  @JsonKey()
  final List<DateTime> eligibleOrderDates;
  @override
  @JsonKey()
  final TimeSlot? nextCollectionSlot;
  @override
  @JsonKey()
  final TimeSlot? nextDeliverySlot;

  @override
  String toString() {
    return 'UserCartState(cartItems: $cartItems, cartSubTotal: $cartSubTotal, cartTax: $cartTax, cartTotal: $cartTotal, cartDiscountPercent: $cartDiscountPercent, cartDiscountComputed: $cartDiscountComputed, deliverySlots: $deliverySlots, collectionSlots: $collectionSlots, selectedDeliveryAddress: $selectedDeliveryAddress, selectedTimeSlot: $selectedTimeSlot, selectedTipAmount: $selectedTipAmount, discountCode: $discountCode, paymentIntentID: $paymentIntentID, orderID: $orderID, selectedGBPxAmount: $selectedGBPxAmount, selectedPPLAmount: $selectedPPLAmount, payButtonLoading: $payButtonLoading, transferringTokens: $transferringTokens, errorCompletingPayment: $errorCompletingPayment, confirmedPayment: $confirmedPayment, restaurantName: $restaurantName, restaurantID: $restaurantID, restaurantAddress: $restaurantAddress, restaurantWalletAddress: $restaurantWalletAddress, fulfilmentMethod: $fulfilmentMethod, isDelivery: $isDelivery, restaurantMinimumOrder: $restaurantMinimumOrder, restaurantPlatformFee: $restaurantPlatformFee, deliveryInstructions: $deliveryInstructions, selectedPaymentMethod: $selectedPaymentMethod, fulfilmentPostalDistricts: $fulfilmentPostalDistricts, eligibleOrderDates: $eligibleOrderDates, nextCollectionSlot: $nextCollectionSlot, nextDeliverySlot: $nextDeliverySlot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCartState &&
            const DeepCollectionEquality().equals(other.cartItems, cartItems) &&
            const DeepCollectionEquality()
                .equals(other.cartSubTotal, cartSubTotal) &&
            const DeepCollectionEquality().equals(other.cartTax, cartTax) &&
            const DeepCollectionEquality().equals(other.cartTotal, cartTotal) &&
            const DeepCollectionEquality()
                .equals(other.cartDiscountPercent, cartDiscountPercent) &&
            const DeepCollectionEquality()
                .equals(other.cartDiscountComputed, cartDiscountComputed) &&
            const DeepCollectionEquality()
                .equals(other.deliverySlots, deliverySlots) &&
            const DeepCollectionEquality()
                .equals(other.collectionSlots, collectionSlots) &&
            const DeepCollectionEquality().equals(
                other.selectedDeliveryAddress, selectedDeliveryAddress) &&
            const DeepCollectionEquality()
                .equals(other.selectedTimeSlot, selectedTimeSlot) &&
            const DeepCollectionEquality()
                .equals(other.selectedTipAmount, selectedTipAmount) &&
            const DeepCollectionEquality()
                .equals(other.discountCode, discountCode) &&
            const DeepCollectionEquality()
                .equals(other.paymentIntentID, paymentIntentID) &&
            const DeepCollectionEquality().equals(other.orderID, orderID) &&
            const DeepCollectionEquality()
                .equals(other.selectedGBPxAmount, selectedGBPxAmount) &&
            const DeepCollectionEquality()
                .equals(other.selectedPPLAmount, selectedPPLAmount) &&
            const DeepCollectionEquality()
                .equals(other.payButtonLoading, payButtonLoading) &&
            const DeepCollectionEquality()
                .equals(other.transferringTokens, transferringTokens) &&
            const DeepCollectionEquality()
                .equals(other.errorCompletingPayment, errorCompletingPayment) &&
            const DeepCollectionEquality()
                .equals(other.confirmedPayment, confirmedPayment) &&
            const DeepCollectionEquality()
                .equals(other.restaurantName, restaurantName) &&
            const DeepCollectionEquality()
                .equals(other.restaurantID, restaurantID) &&
            const DeepCollectionEquality()
                .equals(other.restaurantAddress, restaurantAddress) &&
            const DeepCollectionEquality().equals(
                other.restaurantWalletAddress, restaurantWalletAddress) &&
            const DeepCollectionEquality()
                .equals(other.fulfilmentMethod, fulfilmentMethod) &&
            const DeepCollectionEquality()
                .equals(other.isDelivery, isDelivery) &&
            const DeepCollectionEquality()
                .equals(other.restaurantMinimumOrder, restaurantMinimumOrder) &&
            const DeepCollectionEquality()
                .equals(other.restaurantPlatformFee, restaurantPlatformFee) &&
            const DeepCollectionEquality()
                .equals(other.deliveryInstructions, deliveryInstructions) &&
            const DeepCollectionEquality()
                .equals(other.selectedPaymentMethod, selectedPaymentMethod) &&
            const DeepCollectionEquality().equals(
                other.fulfilmentPostalDistricts, fulfilmentPostalDistricts) &&
            const DeepCollectionEquality()
                .equals(other.eligibleOrderDates, eligibleOrderDates) &&
            const DeepCollectionEquality()
                .equals(other.nextCollectionSlot, nextCollectionSlot) &&
            const DeepCollectionEquality()
                .equals(other.nextDeliverySlot, nextDeliverySlot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(cartItems),
        const DeepCollectionEquality().hash(cartSubTotal),
        const DeepCollectionEquality().hash(cartTax),
        const DeepCollectionEquality().hash(cartTotal),
        const DeepCollectionEquality().hash(cartDiscountPercent),
        const DeepCollectionEquality().hash(cartDiscountComputed),
        const DeepCollectionEquality().hash(deliverySlots),
        const DeepCollectionEquality().hash(collectionSlots),
        const DeepCollectionEquality().hash(selectedDeliveryAddress),
        const DeepCollectionEquality().hash(selectedTimeSlot),
        const DeepCollectionEquality().hash(selectedTipAmount),
        const DeepCollectionEquality().hash(discountCode),
        const DeepCollectionEquality().hash(paymentIntentID),
        const DeepCollectionEquality().hash(orderID),
        const DeepCollectionEquality().hash(selectedGBPxAmount),
        const DeepCollectionEquality().hash(selectedPPLAmount),
        const DeepCollectionEquality().hash(payButtonLoading),
        const DeepCollectionEquality().hash(transferringTokens),
        const DeepCollectionEquality().hash(errorCompletingPayment),
        const DeepCollectionEquality().hash(confirmedPayment),
        const DeepCollectionEquality().hash(restaurantName),
        const DeepCollectionEquality().hash(restaurantID),
        const DeepCollectionEquality().hash(restaurantAddress),
        const DeepCollectionEquality().hash(restaurantWalletAddress),
        const DeepCollectionEquality().hash(fulfilmentMethod),
        const DeepCollectionEquality().hash(isDelivery),
        const DeepCollectionEquality().hash(restaurantMinimumOrder),
        const DeepCollectionEquality().hash(restaurantPlatformFee),
        const DeepCollectionEquality().hash(deliveryInstructions),
        const DeepCollectionEquality().hash(selectedPaymentMethod),
        const DeepCollectionEquality().hash(fulfilmentPostalDistricts),
        const DeepCollectionEquality().hash(eligibleOrderDates),
        const DeepCollectionEquality().hash(nextCollectionSlot),
        const DeepCollectionEquality().hash(nextDeliverySlot)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_UserCartStateCopyWith<_$_UserCartState> get copyWith =>
      __$$_UserCartStateCopyWithImpl<_$_UserCartState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCartStateToJson(
      this,
    );
  }
}

abstract class _UserCartState extends UserCartState {
  factory _UserCartState(
      {final List<CartItem> cartItems,
      final int cartSubTotal,
      final int cartTax,
      final int cartTotal,
      final int cartDiscountPercent,
      final int cartDiscountComputed,
      final List<TimeSlot> deliverySlots,
      final List<TimeSlot> collectionSlots,
      final DeliveryAddresses? selectedDeliveryAddress,
      final TimeSlot? selectedTimeSlot,
      final int selectedTipAmount,
      final String discountCode,
      final String paymentIntentID,
      final String orderID,
      final double selectedGBPxAmount,
      final double selectedPPLAmount,
      final bool payButtonLoading,
      final bool transferringTokens,
      final bool errorCompletingPayment,
      final bool confirmedPayment,
      final String restaurantName,
      final String restaurantID,
      final DeliveryAddresses? restaurantAddress,
      final String restaurantWalletAddress,
      final FulfilmentMethodType fulfilmentMethod,
      final bool isDelivery,
      final int restaurantMinimumOrder,
      final int restaurantPlatformFee,
      final String deliveryInstructions,
      final PaymentMethod? selectedPaymentMethod,
      final List<String> fulfilmentPostalDistricts,
      final List<DateTime> eligibleOrderDates,
      final TimeSlot? nextCollectionSlot,
      final TimeSlot? nextDeliverySlot}) = _$_UserCartState;
  _UserCartState._() : super._();

  factory _UserCartState.fromJson(Map<String, dynamic> json) =
      _$_UserCartState.fromJson;

  @override
  List<CartItem> get cartItems;
  @override
  int get cartSubTotal;
  @override
  int get cartTax;
  @override
  int get cartTotal;
  @override
  int get cartDiscountPercent;
  @override
  int get cartDiscountComputed;
  @override
  List<TimeSlot> get deliverySlots;
  @override
  List<TimeSlot> get collectionSlots;
  @override
  DeliveryAddresses? get selectedDeliveryAddress;
  @override
  TimeSlot? get selectedTimeSlot;
  @override
  int get selectedTipAmount;
  @override
  String get discountCode;
  @override
  String get paymentIntentID;
  @override
  String get orderID;
  @override
  double get selectedGBPxAmount;
  @override
  double get selectedPPLAmount;
  @override
  bool get payButtonLoading;
  @override
  bool get transferringTokens;
  @override
  bool get errorCompletingPayment;
  @override
  bool get confirmedPayment;
  @override
  String get restaurantName;
  @override
  String get restaurantID;
  @override
  DeliveryAddresses? get restaurantAddress;
  @override
  String get restaurantWalletAddress;
  @override
  FulfilmentMethodType get fulfilmentMethod;
  @override
  bool get isDelivery;
  @override
  int get restaurantMinimumOrder;
  @override
  int get restaurantPlatformFee;
  @override
  String get deliveryInstructions;
  @override
  PaymentMethod? get selectedPaymentMethod;
  @override
  List<String> get fulfilmentPostalDistricts;
  @override
  List<DateTime> get eligibleOrderDates;
  @override
  TimeSlot? get nextCollectionSlot;
  @override
  TimeSlot? get nextDeliverySlot;
  @override
  @JsonKey(ignore: true)
  _$$_UserCartStateCopyWith<_$_UserCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
