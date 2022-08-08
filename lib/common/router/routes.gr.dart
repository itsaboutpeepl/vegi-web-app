// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../features/veganHome/screens/awaitingPayment.dart' as _i6;
import '../../features/veganHome/screens/checkoutScreen.dart' as _i4;
import '../../features/veganHome/screens/orderConfirmed.dart' as _i5;
import '../../features/veganHome/screens/restaurantMenuScreen.dart' as _i2;
import '../../features/veganHome/screens/toteScreen.dart' as _i3;
import '../../features/veganHome/screens/veganHome.dart' as _i1;
import '../../models/restaurant/restaurantMenuItem.dart' as _i9;

class RootRouter extends _i7.RootStackRouter {
  RootRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    VeganHomeScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.VeganHomeScreen());
    },
    RestaurantMenuScreen.name: (routeData) {
      final args = routeData.argsAs<RestaurantMenuScreenArgs>();
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child:
              _i2.RestaurantMenuScreen(key: args.key, menuList: args.menuList),
          transitionsBuilder: _i7.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ToteScreen.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ToteScreen(),
          opaque: true,
          barrierDismissible: false);
    },
    CheckoutScreen.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.CheckoutScreen(),
          transitionsBuilder: _i7.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    OrderConfirmedScreen.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.OrderConfirmedScreen(),
          transitionsBuilder: _i7.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    },
    AwaitingPaymentPage.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AwaitingPaymentPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(VeganHomeScreen.name, path: '/'),
        _i7.RouteConfig(RestaurantMenuScreen.name,
            path: '/restaurant-menu-screen'),
        _i7.RouteConfig(ToteScreen.name, path: '/tote-screen'),
        _i7.RouteConfig(CheckoutScreen.name, path: '/checkout-screen'),
        _i7.RouteConfig(OrderConfirmedScreen.name,
            path: '/order-confirmed-screen'),
        _i7.RouteConfig(AwaitingPaymentPage.name,
            path: '/awaiting-payment-page'),
        _i7.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.VeganHomeScreen]
class VeganHomeScreen extends _i7.PageRouteInfo<void> {
  const VeganHomeScreen() : super(VeganHomeScreen.name, path: '/');

  static const String name = 'VeganHomeScreen';
}

/// generated route for
/// [_i2.RestaurantMenuScreen]
class RestaurantMenuScreen extends _i7.PageRouteInfo<RestaurantMenuScreenArgs> {
  RestaurantMenuScreen(
      {_i8.Key? key, required List<_i9.RestaurantMenuItem> menuList})
      : super(RestaurantMenuScreen.name,
            path: '/restaurant-menu-screen',
            args: RestaurantMenuScreenArgs(key: key, menuList: menuList));

  static const String name = 'RestaurantMenuScreen';
}

class RestaurantMenuScreenArgs {
  const RestaurantMenuScreenArgs({this.key, required this.menuList});

  final _i8.Key? key;

  final List<_i9.RestaurantMenuItem> menuList;

  @override
  String toString() {
    return 'RestaurantMenuScreenArgs{key: $key, menuList: $menuList}';
  }
}

/// generated route for
/// [_i3.ToteScreen]
class ToteScreen extends _i7.PageRouteInfo<void> {
  const ToteScreen() : super(ToteScreen.name, path: '/tote-screen');

  static const String name = 'ToteScreen';
}

/// generated route for
/// [_i4.CheckoutScreen]
class CheckoutScreen extends _i7.PageRouteInfo<void> {
  const CheckoutScreen() : super(CheckoutScreen.name, path: '/checkout-screen');

  static const String name = 'CheckoutScreen';
}

/// generated route for
/// [_i5.OrderConfirmedScreen]
class OrderConfirmedScreen extends _i7.PageRouteInfo<void> {
  const OrderConfirmedScreen()
      : super(OrderConfirmedScreen.name, path: '/order-confirmed-screen');

  static const String name = 'OrderConfirmedScreen';
}

/// generated route for
/// [_i6.AwaitingPaymentPage]
class AwaitingPaymentPage extends _i7.PageRouteInfo<void> {
  const AwaitingPaymentPage()
      : super(AwaitingPaymentPage.name, path: '/awaiting-payment-page');

  static const String name = 'AwaitingPaymentPage';
}
