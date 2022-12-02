import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/common/router/routes.dart';
import 'package:vegan_liverpool/constants/analytics_events.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/shared/shimmer_button.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/viewsmodels/checkout/floating_cart_bar_vm.dart';
import 'package:vegan_liverpool/utils/analytics.dart';

class FloatingCartBar extends StatelessWidget {
  const FloatingCartBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FloatingCartBarViewModel>(
      distinct: true,
      converter: FloatingCartBarViewModel.fromStore,
      builder: (_, viewmodel) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          bottom: viewmodel.hasItems ? 0 : -100,
          child: Column(
            children: [
              if (viewmodel.isBelowOrderMinimum && viewmodel.hasItems)
                Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'This restaurant is not accepting'
                      ' orders below ${viewmodel.orderMinimum}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ColoredBox(
                color: themeShade200,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ShimmerButton(
                      buttonContent: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${viewmodel.itemCount} Items',
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                viewmodel.itemTotal,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            'Checkout',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right,
                            size: 16,
                          ),
                        ],
                      ),
                      buttonAction: () {
                        Analytics.track(
                          eventName: AnalyticsEvents.viewCheckout,
                        );
                        context.router.push(const CheckoutScreen());
                      },
                      baseColor: Colors.white,
                      highlightColor: Colors.grey.shade200,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
