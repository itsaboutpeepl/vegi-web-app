import 'package:auto_route/auto_route.dart';
import 'package:vegan_liverpool/common/router/routes.dart';

bool isAuthenticated = false;

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      // router.push(
      //   VeganHomeScreen(onLoginResult: (bool isLoggedIn) {
      //     isAuthenticated = isLoggedIn;
      //     resolver.next(isLoggedIn);
      //   }),
      // );
    }
  }
}
