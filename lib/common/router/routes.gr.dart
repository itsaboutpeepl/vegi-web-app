// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../features/screens/splash_screen.dart' as _i1;
import '../../features/veganHome/screens/allOrdersPage.dart' as _i7;
import '../../features/veganHome/screens/awaitingPayment.dart' as _i8;
import '../../features/veganHome/screens/checkoutScreen.dart' as _i5;
import '../../features/veganHome/screens/orderConfirmed.dart' as _i6;
import '../../features/veganHome/screens/restaurantMenuScreen.dart' as _i3;
import '../../features/veganHome/screens/toteScreen.dart' as _i4;
import '../../features/veganHome/screens/veganHome.dart' as _i2;
import '../../models/restaurant/restaurantMenuItem.dart' as _i11;

class RootRouter extends _i9.RootStackRouter {
  RootRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      final args = routeData.argsAs<SplashScreenArgs>(
          orElse: () => const SplashScreenArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.SplashScreen(
              key: args.key, onLoginResult: args.onLoginResult));
    },
    VeganHomeScreen.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.VeganHomeScreen());
    },
    RestaurantMenuScreen.name: (routeData) {
      final args = routeData.argsAs<RestaurantMenuScreenArgs>();
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child:
              _i3.RestaurantMenuScreen(key: args.key, menuList: args.menuList),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    ToteScreen.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.ToteScreen(),
          opaque: true,
          barrierDismissible: false);
    },
    CheckoutScreen.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.CheckoutScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    OrderConfirmedScreen.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.OrderConfirmedScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    },
    AllOrdersPage.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AllOrdersPage());
    },
    AwaitingPaymentPage.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AwaitingPaymentPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashScreen.name, path: '/'),
        _i9.RouteConfig(VeganHomeScreen.name, path: '/vegan-home-screen'),
        _i9.RouteConfig(RestaurantMenuScreen.name,
            path: '/restaurant-menu-screen'),
        _i9.RouteConfig(ToteScreen.name, path: '/tote-screen'),
        _i9.RouteConfig(CheckoutScreen.name, path: '/checkout-screen'),
        _i9.RouteConfig(OrderConfirmedScreen.name,
            path: '/order-confirmed-screen'),
        _i9.RouteConfig(AllOrdersPage.name, path: '/all-orders-page'),
        _i9.RouteConfig(AwaitingPaymentPage.name,
            path: '/awaiting-payment-page'),
        _i9.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i9.PageRouteInfo<SplashScreenArgs> {
  SplashScreen({_i10.Key? key, void Function(bool)? onLoginResult})
      : super(SplashScreen.name,
            path: '/',
            args: SplashScreenArgs(key: key, onLoginResult: onLoginResult));

  static const String name = 'SplashScreen';
}

class SplashScreenArgs {
  const SplashScreenArgs({this.key, this.onLoginResult});

  final _i10.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'SplashScreenArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i2.VeganHomeScreen]
class VeganHomeScreen extends _i9.PageRouteInfo<void> {
  const VeganHomeScreen()
      : super(VeganHomeScreen.name, path: '/vegan-home-screen');

  static const String name = 'VeganHomeScreen';
}

/// generated route for
/// [_i3.RestaurantMenuScreen]
class RestaurantMenuScreen extends _i9.PageRouteInfo<RestaurantMenuScreenArgs> {
  RestaurantMenuScreen(
      {_i10.Key? key, required List<_i11.RestaurantMenuItem> menuList})
      : super(RestaurantMenuScreen.name,
            path: '/restaurant-menu-screen',
            args: RestaurantMenuScreenArgs(key: key, menuList: menuList));

  static const String name = 'RestaurantMenuScreen';
}

class RestaurantMenuScreenArgs {
  const RestaurantMenuScreenArgs({this.key, required this.menuList});

  final _i10.Key? key;

  final List<_i11.RestaurantMenuItem> menuList;

  @override
  String toString() {
    return 'RestaurantMenuScreenArgs{key: $key, menuList: $menuList}';
  }
}

/// generated route for
/// [_i4.ToteScreen]
class ToteScreen extends _i9.PageRouteInfo<void> {
  const ToteScreen() : super(ToteScreen.name, path: '/tote-screen');

  static const String name = 'ToteScreen';
}

/// generated route for
/// [_i5.CheckoutScreen]
class CheckoutScreen extends _i9.PageRouteInfo<void> {
  const CheckoutScreen() : super(CheckoutScreen.name, path: '/checkout-screen');

  static const String name = 'CheckoutScreen';
}

/// generated route for
/// [_i6.OrderConfirmedScreen]
class OrderConfirmedScreen extends _i9.PageRouteInfo<void> {
  const OrderConfirmedScreen()
      : super(OrderConfirmedScreen.name, path: '/order-confirmed-screen');

  static const String name = 'OrderConfirmedScreen';
}

/// generated route for
/// [_i7.AllOrdersPage]
class AllOrdersPage extends _i9.PageRouteInfo<void> {
  const AllOrdersPage() : super(AllOrdersPage.name, path: '/all-orders-page');

  static const String name = 'AllOrdersPage';
}

/// generated route for
/// [_i8.AwaitingPaymentPage]
class AwaitingPaymentPage extends _i9.PageRouteInfo<void> {
  const AwaitingPaymentPage()
      : super(AwaitingPaymentPage.name, path: '/awaiting-payment-page');

  static const String name = 'AwaitingPaymentPage';
}
