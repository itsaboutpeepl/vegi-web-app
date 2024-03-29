import 'package:auto_route/auto_route.dart';
import 'package:vegan_liverpool/features/veganHome/screens/aboutScreen.dart';
import 'package:vegan_liverpool/features/veganHome/screens/allOrdersPage.dart';
import 'package:vegan_liverpool/features/veganHome/screens/awaitingPayment.dart';
import 'package:vegan_liverpool/features/veganHome/screens/checkout_screen.dart';
import 'package:vegan_liverpool/features/veganHome/screens/faqScreen.dart';
import 'package:vegan_liverpool/features/veganHome/screens/orderConfirmed.dart';
import 'package:vegan_liverpool/features/veganHome/screens/restaurantMenuScreen.dart';
import 'package:vegan_liverpool/features/veganHome/screens/veganHome.dart';
export 'routes.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: VeganHomeScreen,
      name: 'veganHomeScreen',
    ),
    CustomRoute(
      page: RestaurantMenuScreen,
      name: 'restaurantMenuScreen',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    AutoRoute(
      page: AllOrdersPage,
      name: 'allOrdersPage',
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
      page: AwaitingPaymentPage,
      name: 'awaitingPaymentPage',
    ),
    AutoRoute(
      page: FAQScreen,
      name: 'FAQScreen',
    ),
    AutoRoute(
      page: AboutScreen,
      name: 'aboutScreen',
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $RootRouter {}
