// import 'package:auto_route/auto_route.dart';
// import 'package:vegan_liverpool/common/router/route_guards.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/checkoutScreen.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/allOrdersPage.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/orderConfirmed.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/preparingOrderScreen.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/scheduledOrdersPage.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/toteScreen.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/restaurantMenuScreen.dart';
// import 'package:vegan_liverpool/features/veganHome/screens/veganHome.dart';

// const veganHomeTab = AutoRoute(
//   path: 'veganHomeAlt',
//   name: 'veganHomeAltTab',
//   page: EmptyRouterPage,
//   children: [
//     AutoRoute(
//       initial: true,
//       page: VeganHomeScreen,
//       name: 'veganHomeScreenAlt',
//       guards: [AuthGuard],
//     ),
//     CustomRoute(
//       page: RestaurantMenuScreen,
//       name: 'restaurantMenuScreen',
//       guards: [AuthGuard],
//       transitionsBuilder: TransitionsBuilders.slideLeft,
//     ),
//     CustomRoute(
//       page: ToteScreen,
//       name: 'toteScreen',
//       guards: [AuthGuard],
//     ),
//     CustomRoute(
//       page: CheckoutScreen,
//       name: 'checkoutScreen',
//       guards: [AuthGuard],
//       transitionsBuilder: TransitionsBuilders.slideLeft,
//     ),
//     CustomRoute(
//       page: OrderConfirmedScreen,
//       name: 'orderConfirmedScreen',
//       guards: [AuthGuard],
//       transitionsBuilder: TransitionsBuilders.slideBottom,
//     ),
//     AutoRoute(
//       page: AllOrdersPage,
//       name: 'AllOrdersPage',
//       guards: [AuthGuard],
//     ),
//     AutoRoute(
//       page: ScheduledOrdersPage,
//       name: 'ScheduledOrdersPage',
//       guards: [AuthGuard],
//     ),
//     CustomRoute(
//       page: PreparingOrderPage,
//       name: 'PreparingOrderPage',
//       guards: [AuthGuard],
//       transitionsBuilder: TransitionsBuilders.slideBottom,
//     )
//   ],
// );
