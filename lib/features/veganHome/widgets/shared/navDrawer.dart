import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vegan_liverpool/common/router/routes.gr.dart';
import 'package:vegan_liverpool/constants/analytics_events.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/extensions.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/utils/analytics.dart';

class DrawerViewModel {
  DrawerViewModel(
      {required this.firstName,
      required this.gbpBalance,
      required this.pplBalance});

  String firstName;
  String gbpBalance;
  String pplBalance;
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DrawerViewModel>(
      distinct: true,
      converter: (store) {
        return DrawerViewModel(
          firstName: store.state.userState.displayName.capitalize(),
          gbpBalance: store.state.userState.gbpBalance.toStringAsFixed(2),
          pplBalance: store.state.userState.pplBalance.toStringAsFixed(2),
        );
      },
      builder: (_, viewmodel) {
        return Drawer(
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: themeShade300,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Hi ${viewmodel.firstName}!',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                text: viewmodel.gbpBalance,
                                children: [
                                  TextSpan(
                                    text: ' GBPx',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Spacer(),
                            Text.rich(
                              TextSpan(
                                text: viewmodel.pplBalance,
                                children: [
                                  TextSpan(
                                    text: ' PPL',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.clockRotateLeft),
                title: const Text('My Orders'),
                onTap: () {
                  Analytics.track(eventName: AnalyticsEvents.viewAllOrders);
                  context.router.push(const AllOrdersPage());
                },
              ),
              ListTile(
                leading: const Icon(Icons.quiz),
                title: const Text('FAQs'),
                onTap: () {
                  Analytics.track(eventName: AnalyticsEvents.viewFAQ);
                  context.router.push(const FAQScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.help_sharp),
                title: const Text('About Us'),
                onTap: () {
                  Analytics.track(eventName: AnalyticsEvents.viewAbout);
                  context.router.push(const AboutScreen());
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
