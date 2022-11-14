import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@Freezed()
class UserState with _$UserState {
  @JsonSerializable()
  factory UserState({
    @Default([]) List<DeliveryAddresses> listOfDeliveryAddresses,
    @Default("") String walletAddress,
    @Default("") String displayName,
    @Default("") String phoneNumber,
    @Default("") String email,
  }) = _UserState;

  const UserState._();

  factory UserState.initial() => UserState(
        listOfDeliveryAddresses: [],
        displayName: '',
        walletAddress: '',
        phoneNumber: '',
        email: '',
      );

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}

class UserStateConverter
    implements JsonConverter<UserState, Map<String, dynamic>?> {
  const UserStateConverter();

  @override
  UserState fromJson(Map<String, dynamic>? json) =>
      json != null ? UserState.fromJson(json) : UserState.initial();

  @override
  Map<String, dynamic> toJson(UserState instance) => instance.toJson();
}
