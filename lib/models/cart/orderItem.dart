import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegan_liverpool/models/cart/product.dart';
import 'package:vegan_liverpool/models/restaurant/productOptions.dart';
import 'package:vegan_liverpool/models/cart/orderProductOptionValue.dart';

part 'orderItem.freezed.dart';
part 'orderItem.g.dart';

@Freezed()
class OrderItem with _$OrderItem {
  // static Product productFromJson(Map<String, dynamic> itemJson) {
  //   return Product(
  //     name: itemJson['name'] as String,
  //     basePrice: itemJson['basePrice'] as int,
  //     options: (itemJson['optionValues'] as List<Map<String, dynamic>>)
  //         .map(OrderProductOptionValue.fromJson)
  //         .toList(),
  //   );
  // }

  @JsonSerializable()
  factory OrderItem({
    required int id,
    bool? unfulfilled,
    required Product product,
  }) = _OrderItem;

  const OrderItem._();

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}
