// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get id => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  num get total => throw _privateConstructorUsedError;
  num get subtotal => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toTS)
  DateTime get orderedDateTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toTSNullable)
  DateTime? get paidDateTime => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _toTSNullable)
  DateTime? get refundDateTime => throw _privateConstructorUsedError;
  String? get deliveryName => throw _privateConstructorUsedError;
  String? get deliveryEmail => throw _privateConstructorUsedError;
  String? get deliveryPhoneNumber => throw _privateConstructorUsedError;
  String get deliveryAddressLineOne => throw _privateConstructorUsedError;
  String get deliveryAddressLineTwo => throw _privateConstructorUsedError;
  String get deliveryAddressCity => throw _privateConstructorUsedError;
  String get deliveryAddressPostCode => throw _privateConstructorUsedError;
  String get deliveryAddressInstructions => throw _privateConstructorUsedError;
  String get deliveryId => throw _privateConstructorUsedError;
  @JsonEnum()
  @JsonKey(unknownEnumValue: OrderPaidStatus.unpaid)
  OrderPaidStatus get paymentStatus => throw _privateConstructorUsedError;
  @JsonEnum()
  @JsonKey(unknownEnumValue: RestaurantAcceptedStatus.pending)
  RestaurantAcceptedStatus get restaurantAcceptanceStatus =>
      throw _privateConstructorUsedError;
  bool get deliveryPartnerAccepted => throw _privateConstructorUsedError;
  bool get deliveryPartnerConfirmed => throw _privateConstructorUsedError;
  DateTime get fulfilmentSlotFrom =>
      throw _privateConstructorUsedError; // "2022-09-29T10:00:00.000Z"
  DateTime get fulfilmentSlotTo =>
      throw _privateConstructorUsedError; // "2022-09-29T10:00:00.000Z"
  String get publicId => throw _privateConstructorUsedError;
  int get tipAmount => throw _privateConstructorUsedError;
  double get rewardsIssued => throw _privateConstructorUsedError;
  bool get sentToDeliveryPartner => throw _privateConstructorUsedError;
  VendorDTO get vendor => throw _privateConstructorUsedError;
  DeliveryPartnerDTO? get deliveryPartner => throw _privateConstructorUsedError;
  @JsonKey(readValue: getFulfilmentMethodString)
  FulfilmentMethodType get fulfilmentMethod =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {int id,
      List<OrderItem> items,
      num total,
      num subtotal,
      @JsonKey(fromJson: _toTS)
          DateTime orderedDateTime,
      @JsonKey(fromJson: _toTSNullable)
          DateTime? paidDateTime,
      @JsonKey(fromJson: _toTSNullable)
          DateTime? refundDateTime,
      String? deliveryName,
      String? deliveryEmail,
      String? deliveryPhoneNumber,
      String deliveryAddressLineOne,
      String deliveryAddressLineTwo,
      String deliveryAddressCity,
      String deliveryAddressPostCode,
      String deliveryAddressInstructions,
      String deliveryId,
      @JsonEnum()
      @JsonKey(unknownEnumValue: OrderPaidStatus.unpaid)
          OrderPaidStatus paymentStatus,
      @JsonEnum()
      @JsonKey(unknownEnumValue: RestaurantAcceptedStatus.pending)
          RestaurantAcceptedStatus restaurantAcceptanceStatus,
      bool deliveryPartnerAccepted,
      bool deliveryPartnerConfirmed,
      DateTime fulfilmentSlotFrom,
      DateTime fulfilmentSlotTo,
      String publicId,
      int tipAmount,
      double rewardsIssued,
      bool sentToDeliveryPartner,
      VendorDTO vendor,
      DeliveryPartnerDTO? deliveryPartner,
      @JsonKey(readValue: getFulfilmentMethodString)
          FulfilmentMethodType fulfilmentMethod});

  $VendorDTOCopyWith<$Res> get vendor;
  $DeliveryPartnerDTOCopyWith<$Res>? get deliveryPartner;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? items = freezed,
    Object? total = freezed,
    Object? subtotal = freezed,
    Object? orderedDateTime = freezed,
    Object? paidDateTime = freezed,
    Object? refundDateTime = freezed,
    Object? deliveryName = freezed,
    Object? deliveryEmail = freezed,
    Object? deliveryPhoneNumber = freezed,
    Object? deliveryAddressLineOne = freezed,
    Object? deliveryAddressLineTwo = freezed,
    Object? deliveryAddressCity = freezed,
    Object? deliveryAddressPostCode = freezed,
    Object? deliveryAddressInstructions = freezed,
    Object? deliveryId = freezed,
    Object? paymentStatus = freezed,
    Object? restaurantAcceptanceStatus = freezed,
    Object? deliveryPartnerAccepted = freezed,
    Object? deliveryPartnerConfirmed = freezed,
    Object? fulfilmentSlotFrom = freezed,
    Object? fulfilmentSlotTo = freezed,
    Object? publicId = freezed,
    Object? tipAmount = freezed,
    Object? rewardsIssued = freezed,
    Object? sentToDeliveryPartner = freezed,
    Object? vendor = freezed,
    Object? deliveryPartner = freezed,
    Object? fulfilmentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num,
      orderedDateTime: orderedDateTime == freezed
          ? _value.orderedDateTime
          : orderedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidDateTime: paidDateTime == freezed
          ? _value.paidDateTime
          : paidDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refundDateTime: refundDateTime == freezed
          ? _value.refundDateTime
          : refundDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryName: deliveryName == freezed
          ? _value.deliveryName
          : deliveryName // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryEmail: deliveryEmail == freezed
          ? _value.deliveryEmail
          : deliveryEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryPhoneNumber: deliveryPhoneNumber == freezed
          ? _value.deliveryPhoneNumber
          : deliveryPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddressLineOne: deliveryAddressLineOne == freezed
          ? _value.deliveryAddressLineOne
          : deliveryAddressLineOne // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressLineTwo: deliveryAddressLineTwo == freezed
          ? _value.deliveryAddressLineTwo
          : deliveryAddressLineTwo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressCity: deliveryAddressCity == freezed
          ? _value.deliveryAddressCity
          : deliveryAddressCity // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressPostCode: deliveryAddressPostCode == freezed
          ? _value.deliveryAddressPostCode
          : deliveryAddressPostCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressInstructions: deliveryAddressInstructions == freezed
          ? _value.deliveryAddressInstructions
          : deliveryAddressInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as OrderPaidStatus,
      restaurantAcceptanceStatus: restaurantAcceptanceStatus == freezed
          ? _value.restaurantAcceptanceStatus
          : restaurantAcceptanceStatus // ignore: cast_nullable_to_non_nullable
              as RestaurantAcceptedStatus,
      deliveryPartnerAccepted: deliveryPartnerAccepted == freezed
          ? _value.deliveryPartnerAccepted
          : deliveryPartnerAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryPartnerConfirmed: deliveryPartnerConfirmed == freezed
          ? _value.deliveryPartnerConfirmed
          : deliveryPartnerConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfilmentSlotFrom: fulfilmentSlotFrom == freezed
          ? _value.fulfilmentSlotFrom
          : fulfilmentSlotFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fulfilmentSlotTo: fulfilmentSlotTo == freezed
          ? _value.fulfilmentSlotTo
          : fulfilmentSlotTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publicId: publicId == freezed
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      tipAmount: tipAmount == freezed
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as int,
      rewardsIssued: rewardsIssued == freezed
          ? _value.rewardsIssued
          : rewardsIssued // ignore: cast_nullable_to_non_nullable
              as double,
      sentToDeliveryPartner: sentToDeliveryPartner == freezed
          ? _value.sentToDeliveryPartner
          : sentToDeliveryPartner // ignore: cast_nullable_to_non_nullable
              as bool,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as VendorDTO,
      deliveryPartner: deliveryPartner == freezed
          ? _value.deliveryPartner
          : deliveryPartner // ignore: cast_nullable_to_non_nullable
              as DeliveryPartnerDTO?,
      fulfilmentMethod: fulfilmentMethod == freezed
          ? _value.fulfilmentMethod
          : fulfilmentMethod // ignore: cast_nullable_to_non_nullable
              as FulfilmentMethodType,
    ));
  }

  @override
  $VendorDTOCopyWith<$Res> get vendor {
    return $VendorDTOCopyWith<$Res>(_value.vendor, (value) {
      return _then(_value.copyWith(vendor: value));
    });
  }

  @override
  $DeliveryPartnerDTOCopyWith<$Res>? get deliveryPartner {
    if (_value.deliveryPartner == null) {
      return null;
    }

    return $DeliveryPartnerDTOCopyWith<$Res>(_value.deliveryPartner!, (value) {
      return _then(_value.copyWith(deliveryPartner: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      List<OrderItem> items,
      num total,
      num subtotal,
      @JsonKey(fromJson: _toTS)
          DateTime orderedDateTime,
      @JsonKey(fromJson: _toTSNullable)
          DateTime? paidDateTime,
      @JsonKey(fromJson: _toTSNullable)
          DateTime? refundDateTime,
      String? deliveryName,
      String? deliveryEmail,
      String? deliveryPhoneNumber,
      String deliveryAddressLineOne,
      String deliveryAddressLineTwo,
      String deliveryAddressCity,
      String deliveryAddressPostCode,
      String deliveryAddressInstructions,
      String deliveryId,
      @JsonEnum()
      @JsonKey(unknownEnumValue: OrderPaidStatus.unpaid)
          OrderPaidStatus paymentStatus,
      @JsonEnum()
      @JsonKey(unknownEnumValue: RestaurantAcceptedStatus.pending)
          RestaurantAcceptedStatus restaurantAcceptanceStatus,
      bool deliveryPartnerAccepted,
      bool deliveryPartnerConfirmed,
      DateTime fulfilmentSlotFrom,
      DateTime fulfilmentSlotTo,
      String publicId,
      int tipAmount,
      double rewardsIssued,
      bool sentToDeliveryPartner,
      VendorDTO vendor,
      DeliveryPartnerDTO? deliveryPartner,
      @JsonKey(readValue: getFulfilmentMethodString)
          FulfilmentMethodType fulfilmentMethod});

  @override
  $VendorDTOCopyWith<$Res> get vendor;
  @override
  $DeliveryPartnerDTOCopyWith<$Res>? get deliveryPartner;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, (v) => _then(v as _$_Order));

  @override
  _$_Order get _value => super._value as _$_Order;

  @override
  $Res call({
    Object? id = freezed,
    Object? items = freezed,
    Object? total = freezed,
    Object? subtotal = freezed,
    Object? orderedDateTime = freezed,
    Object? paidDateTime = freezed,
    Object? refundDateTime = freezed,
    Object? deliveryName = freezed,
    Object? deliveryEmail = freezed,
    Object? deliveryPhoneNumber = freezed,
    Object? deliveryAddressLineOne = freezed,
    Object? deliveryAddressLineTwo = freezed,
    Object? deliveryAddressCity = freezed,
    Object? deliveryAddressPostCode = freezed,
    Object? deliveryAddressInstructions = freezed,
    Object? deliveryId = freezed,
    Object? paymentStatus = freezed,
    Object? restaurantAcceptanceStatus = freezed,
    Object? deliveryPartnerAccepted = freezed,
    Object? deliveryPartnerConfirmed = freezed,
    Object? fulfilmentSlotFrom = freezed,
    Object? fulfilmentSlotTo = freezed,
    Object? publicId = freezed,
    Object? tipAmount = freezed,
    Object? rewardsIssued = freezed,
    Object? sentToDeliveryPartner = freezed,
    Object? vendor = freezed,
    Object? deliveryPartner = freezed,
    Object? fulfilmentMethod = freezed,
  }) {
    return _then(_$_Order(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num,
      orderedDateTime: orderedDateTime == freezed
          ? _value.orderedDateTime
          : orderedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidDateTime: paidDateTime == freezed
          ? _value.paidDateTime
          : paidDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refundDateTime: refundDateTime == freezed
          ? _value.refundDateTime
          : refundDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveryName: deliveryName == freezed
          ? _value.deliveryName
          : deliveryName // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryEmail: deliveryEmail == freezed
          ? _value.deliveryEmail
          : deliveryEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryPhoneNumber: deliveryPhoneNumber == freezed
          ? _value.deliveryPhoneNumber
          : deliveryPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddressLineOne: deliveryAddressLineOne == freezed
          ? _value.deliveryAddressLineOne
          : deliveryAddressLineOne // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressLineTwo: deliveryAddressLineTwo == freezed
          ? _value.deliveryAddressLineTwo
          : deliveryAddressLineTwo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressCity: deliveryAddressCity == freezed
          ? _value.deliveryAddressCity
          : deliveryAddressCity // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressPostCode: deliveryAddressPostCode == freezed
          ? _value.deliveryAddressPostCode
          : deliveryAddressPostCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressInstructions: deliveryAddressInstructions == freezed
          ? _value.deliveryAddressInstructions
          : deliveryAddressInstructions // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as OrderPaidStatus,
      restaurantAcceptanceStatus: restaurantAcceptanceStatus == freezed
          ? _value.restaurantAcceptanceStatus
          : restaurantAcceptanceStatus // ignore: cast_nullable_to_non_nullable
              as RestaurantAcceptedStatus,
      deliveryPartnerAccepted: deliveryPartnerAccepted == freezed
          ? _value.deliveryPartnerAccepted
          : deliveryPartnerAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryPartnerConfirmed: deliveryPartnerConfirmed == freezed
          ? _value.deliveryPartnerConfirmed
          : deliveryPartnerConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfilmentSlotFrom: fulfilmentSlotFrom == freezed
          ? _value.fulfilmentSlotFrom
          : fulfilmentSlotFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fulfilmentSlotTo: fulfilmentSlotTo == freezed
          ? _value.fulfilmentSlotTo
          : fulfilmentSlotTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      publicId: publicId == freezed
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      tipAmount: tipAmount == freezed
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as int,
      rewardsIssued: rewardsIssued == freezed
          ? _value.rewardsIssued
          : rewardsIssued // ignore: cast_nullable_to_non_nullable
              as double,
      sentToDeliveryPartner: sentToDeliveryPartner == freezed
          ? _value.sentToDeliveryPartner
          : sentToDeliveryPartner // ignore: cast_nullable_to_non_nullable
              as bool,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as VendorDTO,
      deliveryPartner: deliveryPartner == freezed
          ? _value.deliveryPartner
          : deliveryPartner // ignore: cast_nullable_to_non_nullable
              as DeliveryPartnerDTO?,
      fulfilmentMethod: fulfilmentMethod == freezed
          ? _value.fulfilmentMethod
          : fulfilmentMethod // ignore: cast_nullable_to_non_nullable
              as FulfilmentMethodType,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_Order extends _Order {
  _$_Order(
      {required this.id,
      required this.items,
      required this.total,
      required this.subtotal,
      @JsonKey(fromJson: _toTS)
          required this.orderedDateTime,
      @JsonKey(fromJson: _toTSNullable)
          this.paidDateTime,
      @JsonKey(fromJson: _toTSNullable)
          this.refundDateTime,
      required this.deliveryName,
      required this.deliveryEmail,
      required this.deliveryPhoneNumber,
      required this.deliveryAddressLineOne,
      required this.deliveryAddressLineTwo,
      required this.deliveryAddressCity,
      required this.deliveryAddressPostCode,
      required this.deliveryAddressInstructions,
      required this.deliveryId,
      @JsonEnum()
      @JsonKey(unknownEnumValue: OrderPaidStatus.unpaid)
          required this.paymentStatus,
      @JsonEnum()
      @JsonKey(unknownEnumValue: RestaurantAcceptedStatus.pending)
          required this.restaurantAcceptanceStatus,
      required this.deliveryPartnerAccepted,
      required this.deliveryPartnerConfirmed,
      required this.fulfilmentSlotFrom,
      required this.fulfilmentSlotTo,
      required this.publicId,
      required this.tipAmount,
      required this.rewardsIssued,
      required this.sentToDeliveryPartner,
      required this.vendor,
      required this.deliveryPartner,
      @JsonKey(readValue: getFulfilmentMethodString)
          required this.fulfilmentMethod})
      : super._();

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final int id;
  @override
  final List<OrderItem> items;
  @override
  final num total;
  @override
  final num subtotal;
  @override
  @JsonKey(fromJson: _toTS)
  final DateTime orderedDateTime;
  @override
  @JsonKey(fromJson: _toTSNullable)
  final DateTime? paidDateTime;
  @override
  @JsonKey(fromJson: _toTSNullable)
  final DateTime? refundDateTime;
  @override
  final String? deliveryName;
  @override
  final String? deliveryEmail;
  @override
  final String? deliveryPhoneNumber;
  @override
  final String deliveryAddressLineOne;
  @override
  final String deliveryAddressLineTwo;
  @override
  final String deliveryAddressCity;
  @override
  final String deliveryAddressPostCode;
  @override
  final String deliveryAddressInstructions;
  @override
  final String deliveryId;
  @override
  @JsonEnum()
  @JsonKey(unknownEnumValue: OrderPaidStatus.unpaid)
  final OrderPaidStatus paymentStatus;
  @override
  @JsonEnum()
  @JsonKey(unknownEnumValue: RestaurantAcceptedStatus.pending)
  final RestaurantAcceptedStatus restaurantAcceptanceStatus;
  @override
  final bool deliveryPartnerAccepted;
  @override
  final bool deliveryPartnerConfirmed;
  @override
  final DateTime fulfilmentSlotFrom;
// "2022-09-29T10:00:00.000Z"
  @override
  final DateTime fulfilmentSlotTo;
// "2022-09-29T10:00:00.000Z"
  @override
  final String publicId;
  @override
  final int tipAmount;
  @override
  final double rewardsIssued;
  @override
  final bool sentToDeliveryPartner;
  @override
  final VendorDTO vendor;
  @override
  final DeliveryPartnerDTO? deliveryPartner;
  @override
  @JsonKey(readValue: getFulfilmentMethodString)
  final FulfilmentMethodType fulfilmentMethod;

  @override
  String toString() {
    return 'Order(id: $id, items: $items, total: $total, subtotal: $subtotal, orderedDateTime: $orderedDateTime, paidDateTime: $paidDateTime, refundDateTime: $refundDateTime, deliveryName: $deliveryName, deliveryEmail: $deliveryEmail, deliveryPhoneNumber: $deliveryPhoneNumber, deliveryAddressLineOne: $deliveryAddressLineOne, deliveryAddressLineTwo: $deliveryAddressLineTwo, deliveryAddressCity: $deliveryAddressCity, deliveryAddressPostCode: $deliveryAddressPostCode, deliveryAddressInstructions: $deliveryAddressInstructions, deliveryId: $deliveryId, paymentStatus: $paymentStatus, restaurantAcceptanceStatus: $restaurantAcceptanceStatus, deliveryPartnerAccepted: $deliveryPartnerAccepted, deliveryPartnerConfirmed: $deliveryPartnerConfirmed, fulfilmentSlotFrom: $fulfilmentSlotFrom, fulfilmentSlotTo: $fulfilmentSlotTo, publicId: $publicId, tipAmount: $tipAmount, rewardsIssued: $rewardsIssued, sentToDeliveryPartner: $sentToDeliveryPartner, vendor: $vendor, deliveryPartner: $deliveryPartner, fulfilmentMethod: $fulfilmentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.subtotal, subtotal) &&
            const DeepCollectionEquality()
                .equals(other.orderedDateTime, orderedDateTime) &&
            const DeepCollectionEquality()
                .equals(other.paidDateTime, paidDateTime) &&
            const DeepCollectionEquality()
                .equals(other.refundDateTime, refundDateTime) &&
            const DeepCollectionEquality()
                .equals(other.deliveryName, deliveryName) &&
            const DeepCollectionEquality()
                .equals(other.deliveryEmail, deliveryEmail) &&
            const DeepCollectionEquality()
                .equals(other.deliveryPhoneNumber, deliveryPhoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.deliveryAddressLineOne, deliveryAddressLineOne) &&
            const DeepCollectionEquality()
                .equals(other.deliveryAddressLineTwo, deliveryAddressLineTwo) &&
            const DeepCollectionEquality()
                .equals(other.deliveryAddressCity, deliveryAddressCity) &&
            const DeepCollectionEquality().equals(
                other.deliveryAddressPostCode, deliveryAddressPostCode) &&
            const DeepCollectionEquality().equals(
                other.deliveryAddressInstructions,
                deliveryAddressInstructions) &&
            const DeepCollectionEquality()
                .equals(other.deliveryId, deliveryId) &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus) &&
            const DeepCollectionEquality().equals(
                other.restaurantAcceptanceStatus, restaurantAcceptanceStatus) &&
            const DeepCollectionEquality().equals(
                other.deliveryPartnerAccepted, deliveryPartnerAccepted) &&
            const DeepCollectionEquality().equals(
                other.deliveryPartnerConfirmed, deliveryPartnerConfirmed) &&
            const DeepCollectionEquality()
                .equals(other.fulfilmentSlotFrom, fulfilmentSlotFrom) &&
            const DeepCollectionEquality()
                .equals(other.fulfilmentSlotTo, fulfilmentSlotTo) &&
            const DeepCollectionEquality().equals(other.publicId, publicId) &&
            const DeepCollectionEquality().equals(other.tipAmount, tipAmount) &&
            const DeepCollectionEquality()
                .equals(other.rewardsIssued, rewardsIssued) &&
            const DeepCollectionEquality()
                .equals(other.sentToDeliveryPartner, sentToDeliveryPartner) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality()
                .equals(other.deliveryPartner, deliveryPartner) &&
            const DeepCollectionEquality()
                .equals(other.fulfilmentMethod, fulfilmentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(items),
        const DeepCollectionEquality().hash(total),
        const DeepCollectionEquality().hash(subtotal),
        const DeepCollectionEquality().hash(orderedDateTime),
        const DeepCollectionEquality().hash(paidDateTime),
        const DeepCollectionEquality().hash(refundDateTime),
        const DeepCollectionEquality().hash(deliveryName),
        const DeepCollectionEquality().hash(deliveryEmail),
        const DeepCollectionEquality().hash(deliveryPhoneNumber),
        const DeepCollectionEquality().hash(deliveryAddressLineOne),
        const DeepCollectionEquality().hash(deliveryAddressLineTwo),
        const DeepCollectionEquality().hash(deliveryAddressCity),
        const DeepCollectionEquality().hash(deliveryAddressPostCode),
        const DeepCollectionEquality().hash(deliveryAddressInstructions),
        const DeepCollectionEquality().hash(deliveryId),
        const DeepCollectionEquality().hash(paymentStatus),
        const DeepCollectionEquality().hash(restaurantAcceptanceStatus),
        const DeepCollectionEquality().hash(deliveryPartnerAccepted),
        const DeepCollectionEquality().hash(deliveryPartnerConfirmed),
        const DeepCollectionEquality().hash(fulfilmentSlotFrom),
        const DeepCollectionEquality().hash(fulfilmentSlotTo),
        const DeepCollectionEquality().hash(publicId),
        const DeepCollectionEquality().hash(tipAmount),
        const DeepCollectionEquality().hash(rewardsIssued),
        const DeepCollectionEquality().hash(sentToDeliveryPartner),
        const DeepCollectionEquality().hash(vendor),
        const DeepCollectionEquality().hash(deliveryPartner),
        const DeepCollectionEquality().hash(fulfilmentMethod)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  factory _Order(
      {required final int id,
      required final List<OrderItem> items,
      required final num total,
      required final num subtotal,
      @JsonKey(fromJson: _toTS)
          required final DateTime orderedDateTime,
      @JsonKey(fromJson: _toTSNullable)
          final DateTime? paidDateTime,
      @JsonKey(fromJson: _toTSNullable)
          final DateTime? refundDateTime,
      required final String? deliveryName,
      required final String? deliveryEmail,
      required final String? deliveryPhoneNumber,
      required final String deliveryAddressLineOne,
      required final String deliveryAddressLineTwo,
      required final String deliveryAddressCity,
      required final String deliveryAddressPostCode,
      required final String deliveryAddressInstructions,
      required final String deliveryId,
      @JsonEnum()
      @JsonKey(unknownEnumValue: OrderPaidStatus.unpaid)
          required final OrderPaidStatus paymentStatus,
      @JsonEnum()
      @JsonKey(unknownEnumValue: RestaurantAcceptedStatus.pending)
          required final RestaurantAcceptedStatus restaurantAcceptanceStatus,
      required final bool deliveryPartnerAccepted,
      required final bool deliveryPartnerConfirmed,
      required final DateTime fulfilmentSlotFrom,
      required final DateTime fulfilmentSlotTo,
      required final String publicId,
      required final int tipAmount,
      required final double rewardsIssued,
      required final bool sentToDeliveryPartner,
      required final VendorDTO vendor,
      required final DeliveryPartnerDTO? deliveryPartner,
      @JsonKey(readValue: getFulfilmentMethodString)
          required final FulfilmentMethodType fulfilmentMethod}) = _$_Order;
  _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int get id;
  @override
  List<OrderItem> get items;
  @override
  num get total;
  @override
  num get subtotal;
  @override
  @JsonKey(fromJson: _toTS)
  DateTime get orderedDateTime;
  @override
  @JsonKey(fromJson: _toTSNullable)
  DateTime? get paidDateTime;
  @override
  @JsonKey(fromJson: _toTSNullable)
  DateTime? get refundDateTime;
  @override
  String? get deliveryName;
  @override
  String? get deliveryEmail;
  @override
  String? get deliveryPhoneNumber;
  @override
  String get deliveryAddressLineOne;
  @override
  String get deliveryAddressLineTwo;
  @override
  String get deliveryAddressCity;
  @override
  String get deliveryAddressPostCode;
  @override
  String get deliveryAddressInstructions;
  @override
  String get deliveryId;
  @override
  @JsonEnum()
  @JsonKey(unknownEnumValue: OrderPaidStatus.unpaid)
  OrderPaidStatus get paymentStatus;
  @override
  @JsonEnum()
  @JsonKey(unknownEnumValue: RestaurantAcceptedStatus.pending)
  RestaurantAcceptedStatus get restaurantAcceptanceStatus;
  @override
  bool get deliveryPartnerAccepted;
  @override
  bool get deliveryPartnerConfirmed;
  @override
  DateTime get fulfilmentSlotFrom;
  @override // "2022-09-29T10:00:00.000Z"
  DateTime get fulfilmentSlotTo;
  @override // "2022-09-29T10:00:00.000Z"
  String get publicId;
  @override
  int get tipAmount;
  @override
  double get rewardsIssued;
  @override
  bool get sentToDeliveryPartner;
  @override
  VendorDTO get vendor;
  @override
  DeliveryPartnerDTO? get deliveryPartner;
  @override
  @JsonKey(readValue: getFulfilmentMethodString)
  FulfilmentMethodType get fulfilmentMethod;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
