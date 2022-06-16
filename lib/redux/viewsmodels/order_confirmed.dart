import 'package:equatable/equatable.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';
import 'package:vegan_liverpool/models/restaurant/cartItem.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';

class OrderConfirmedViewModel extends Equatable {
  final Map<String, String> selectedSlot;
  final bool isDelivery;
  final DeliveryAddresses orderAddress;
  final String restaurantName;
  final List<CartItem> cartItems;
  final int cartTotal;
  final String orderID;
  final Function() clearCart;
  //final String userName;
  //final String phoneNumber;
  final double GBPxAmountPaid;
  final double PPLAmountPaid;

  OrderConfirmedViewModel({
    required this.selectedSlot,
    required this.isDelivery,
    required this.orderAddress,
    required this.restaurantName,
    required this.cartItems,
    required this.cartTotal,
    required this.orderID,
    required this.clearCart,
    //required this.userName,
    //required this.phoneNumber,
    required this.GBPxAmountPaid,
    required this.PPLAmountPaid,
  });

  static OrderConfirmedViewModel fromStore(Store<AppState> store) {
    return OrderConfirmedViewModel(
      selectedSlot: store.state.cartState.selectedTimeSlot,
      isDelivery: store.state.cartState.isDelivery,
      orderAddress: store.state.cartState.isDelivery
          ? store.state.cartState.selectedDeliveryAddress!
          : store.state.cartState.restaurantAddress!,
      restaurantName: store.state.cartState.restaurantName,
      cartItems: store.state.cartState.cartItems,
      cartTotal: store.state.cartState.cartTotal,
      orderID: store.state.cartState.orderID,
      //userName: store.state.userState.displayName,
      //phoneNumber: store.state.userState.phoneNumber,
      GBPxAmountPaid: store.state.cartState.selectedGBPxAmount,
      PPLAmountPaid: store.state.cartState.selectedPPLAmount,
      clearCart: () {
        store.dispatch(ClearCart());
      },
    );
  }

  @override
  List<Object> get props => [];
}
