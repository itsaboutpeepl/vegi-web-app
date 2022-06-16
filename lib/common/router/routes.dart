import 'package:auto_route/auto_route.dart';
import 'package:vegan_liverpool/features/screens/splash_screen.dart';
import 'package:vegan_liverpool/features/veganHome/screens/allOrdersPage.dart';
import 'package:vegan_liverpool/features/veganHome/screens/checkoutScreen.dart';
import 'package:vegan_liverpool/features/veganHome/screens/orderConfirmed.dart';
import 'package:vegan_liverpool/features/veganHome/screens/restaurantMenuScreen.dart';
import 'package:vegan_liverpool/features/veganHome/screens/toteScreen.dart';
import 'package:vegan_liverpool/features/veganHome/screens/veganHome.dart';
export 'routes.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(
      page: VeganHomeScreen,
      name: 'veganHomeScreen',
    ),
    CustomRoute(
      page: RestaurantMenuScreen,
      name: 'restaurantMenuScreen',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: ToteScreen,
      name: 'toteScreen',
    ),
    CustomRoute(
      page: CheckoutScreen,
      name: 'checkoutScreen',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: OrderConfirmedScreen,
      name: 'orderConfirmedScreen',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    AutoRoute(
      page: AllOrdersPage,
      name: 'AllOrdersPage',
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $RootRouter {}
