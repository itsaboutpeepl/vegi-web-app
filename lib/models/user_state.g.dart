// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserState _$$_UserStateFromJson(Map<String, dynamic> json) => _$_UserState(
      listOfDeliveryAddresses: (json['listOfDeliveryAddresses']
                  as List<dynamic>?)
              ?.map(
                  (e) => DeliveryAddresses.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      walletAddress: json['walletAddress'] as String? ?? "",
      displayName: json['displayName'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      email: json['email'] as String? ?? "",
    );

Map<String, dynamic> _$$_UserStateToJson(_$_UserState instance) =>
    <String, dynamic>{
      'listOfDeliveryAddresses':
          instance.listOfDeliveryAddresses.map((e) => e.toJson()).toList(),
      'walletAddress': instance.walletAddress,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
