import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegan_liverpool/constants/enums.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/extensions.dart';

part 'deliveryAddresses.freezed.dart';
part 'deliveryAddresses.g.dart';

@Freezed()
class DeliveryAddresses with _$DeliveryAddresses {
  @JsonSerializable()
  factory DeliveryAddresses({
    required int internalID,
    required String addressLine1,
    required String addressLine2,
    required String townCity,
    required String postalCode,
    required DeliveryAddressLabel label,
    required double latitude,
    required double longitude,
    String? phoneNumber,
    String? name,
    String? email,
    String? instructions,
  }) = _DeliveryAddresses;

  const DeliveryAddresses._();

  factory DeliveryAddresses.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressesFromJson(json);

  factory DeliveryAddresses.fromVendorJson(Map<String, dynamic> json) {
    return DeliveryAddresses(
        internalID:
            Random(DateTime.now().millisecondsSinceEpoch).nextInt(10000),
        addressLine1: json['pickupAddressLineOne'] as String? ?? '',
        addressLine2: json['pickupAddressLineTwo'] as String? ?? '',
        townCity: json['pickupAddressCity'] as String? ?? '',
        postalCode: json['pickupAddressPostCode'] as String? ?? '',
        latitude: json['pickupAddressLatitude'] as double? ?? 0.0,
        longitude: json['pickupAddressLongitude'] as double? ?? 0.0,
        label: DeliveryAddressLabel.home);
  }

  factory DeliveryAddresses.fromOrderJson(Map<String, dynamic> json) {
    return DeliveryAddresses(
      internalID: Random(DateTime.now().millisecondsSinceEpoch).nextInt(10000),
      label: EnumHelpers.enumFromString(
            DeliveryAddressLabel.values,
            json['deliveryLabel'] as String?,
          ) ??
          DeliveryAddressLabel.hotel,
      name: json['deliveryName'] as String?,
      email: json['deliveryEmail'] as String?,
      instructions: json['deliveryInstructions'] as String?,
      phoneNumber: json['deliveryPhoneNumber'] as String?,
      addressLine1: json['deliveryAddressLineOne'] as String? ?? '',
      addressLine2: json['deliveryAddressLineTwo'] as String? ?? '',
      townCity: json['deliveryAddressCity'] as String? ?? '',
      postalCode: json['deliveryAddressPostCode'] as String? ?? '',
      latitude: json['deliveryAddressLatitude'] as double? ?? 0.0,
      longitude: json['deliveryAddressLongitude'] as double? ?? 0.0,
    );
  }

  String get shortAddress =>
      '${addressLine1.capitalizeWords()}, ${postalCode.capitalizeWords()}'
          .maxChars(30);

  String get longAddress {
    if (addressLine2.isEmpty) {
      return '${addressLine1.capitalizeWords()}'
          ' \n${postalCode.capitalizeWords()},'
          ' ${townCity.capitalizeWords()}';
    }
    return '${addressLine2.capitalizeWords()}, '
        '${addressLine1.capitalizeWords()}'
        ' \n${postalCode.capitalizeWords()},'
        ' ${townCity.capitalizeWords()}';
  }

  bool deliversTo(List<String> fulfilmentPostalDistricts) {
    final RegExp regex = RegExp(
      r'^(((([A-Z][A-Z]{0,1})[0-9][A-Z0-9]{0,1}) {0,}[0-9])[A-Z]{2})$',
    );

    if (regex.hasMatch(postalCode)) {
      final match = regex.firstMatch(postalCode);
      if (match!.groupCount > 0) {
        return fulfilmentPostalDistricts.contains(match.group(3));
      }
    }
    return false;
  }
}
