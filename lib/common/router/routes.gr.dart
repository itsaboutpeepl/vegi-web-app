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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../features/veganHome/screens/aboutScreen.dart' as _i8;
import '../../features/veganHome/screens/allOrdersPage.dart' as _i3;
import '../../features/veganHome/screens/awaitingPayment.dart' as _i6;
import '../../features/veganHome/screens/checkout_screen.dart' as _i4;
import '../../features/veganHome/screens/faqScreen.dart' as _i7;
import '../../features/veganHome/screens/orderConfirmed.dart' as _i5;
import '../../features/veganHome/screens/restaurantMenuScreen.dart' as _i2;
import '../../features/veganHome/screens/veganHome.dart' as _i1;

class RootRouter extends _i9.RootStackRouter {
  RootRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    VeganHomeScreen.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.VeganHomeScreen());
    },
    RestaurantMenuScreen.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.RestaurantMenuScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AllOrdersPage.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AllOrdersPage());
    },
    CheckoutScreen.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.CheckoutScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    OrderConfirmedScreen.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.OrderConfirmedScreen(),
          transitionsBuilder: _i9.TransitionsBuilders.slideBottom,
          opaque: true,
          barrierDismissible: false);
    },
    AwaitingPaymentPage.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AwaitingPaymentPage());
    },
    FAQScreen.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.FAQScreen());
    },
    AboutScreen.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AboutScreen());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(VeganHomeScreen.name, path: '/'),
        _i9.RouteConfig(RestaurantMenuScreen.name,
            path: '/restaurant-menu-screen'),
        _i9.RouteConfig(AllOrdersPage.name, path: '/all-orders-page'),
        _i9.RouteConfig(CheckoutScreen.name, path: '/checkout-screen'),
        _i9.RouteConfig(OrderConfirmedScreen.name,
            path: '/order-confirmed-screen'),
        _i9.RouteConfig(AwaitingPaymentPage.name,
            path: '/awaiting-payment-page'),
        _i9.RouteConfig(FAQScreen.name, path: '/f-aq-screen'),
        _i9.RouteConfig(AboutScreen.name, path: '/about-screen'),
        _i9.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.VeganHomeScreen]
class VeganHomeScreen extends _i9.PageRouteInfo<void> {
  const VeganHomeScreen() : super(VeganHomeScreen.name, path: '/');

  static const String name = 'VeganHomeScreen';
}

/// generated route for
/// [_i2.RestaurantMenuScreen]
class RestaurantMenuScreen extends _i9.PageRouteInfo<void> {
  const RestaurantMenuScreen()
      : super(RestaurantMenuScreen.name, path: '/restaurant-menu-screen');

  static const String name = 'RestaurantMenuScreen';
}

/// generated route for
/// [_i3.AllOrdersPage]
class AllOrdersPage extends _i9.PageRouteInfo<void> {
  const AllOrdersPage() : super(AllOrdersPage.name, path: '/all-orders-page');

  static const String name = 'AllOrdersPage';
}

/// generated route for
/// [_i4.CheckoutScreen]
class CheckoutScreen extends _i9.PageRouteInfo<void> {
  const CheckoutScreen() : super(CheckoutScreen.name, path: '/checkout-screen');

  static const String name = 'CheckoutScreen';
}

/// generated route for
/// [_i5.OrderConfirmedScreen]
class OrderConfirmedScreen extends _i9.PageRouteInfo<void> {
  const OrderConfirmedScreen()
      : super(OrderConfirmedScreen.name, path: '/order-confirmed-screen');

  static const String name = 'OrderConfirmedScreen';
}

/// generated route for
/// [_i6.AwaitingPaymentPage]
class AwaitingPaymentPage extends _i9.PageRouteInfo<void> {
  const AwaitingPaymentPage()
      : super(AwaitingPaymentPage.name, path: '/awaiting-payment-page');

  static const String name = 'AwaitingPaymentPage';
}

/// generated route for
/// [_i7.FAQScreen]
class FAQScreen extends _i9.PageRouteInfo<void> {
  const FAQScreen() : super(FAQScreen.name, path: '/f-aq-screen');

  static const String name = 'FAQScreen';
}

/// generated route for
/// [_i8.AboutScreen]
class AboutScreen extends _i9.PageRouteInfo<void> {
  const AboutScreen() : super(AboutScreen.name, path: '/about-screen');

  static const String name = 'AboutScreen';
}
