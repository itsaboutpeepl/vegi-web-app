import 'package:auto_route/auto_route.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/common/di/di.dart';
import 'package:vegan_liverpool/constants/strings.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/home_page_actions.dart';
import 'package:vegan_liverpool/services.dart';
import 'package:redux/redux.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatefulWidget {
  final Store<AppState> store;
  MyApp(this.store);

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  //Authentication token used for calls with Fuse

  @override
  void initState() {
    super.initState();
    widget.store.dispatch(fetchHomePageData());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt.allReady(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return StoreProvider<AppState>(
            store: widget.store,
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              locale: _locale,
              title: Strings.appName,
              themeMode: ThemeMode.system,
              routeInformationParser: rootRouter.defaultRouteParser(),
              theme: flexColorSchemeLight.toTheme,
              routerDelegate: rootRouter.delegate(
                navigatorObservers: () => [
                  AutoRouteObserver(),
                  SentryNavigatorObserver(),
                ],
              ),
              builder: (_, router) => ResponsiveWrapper.builder(
                router!,
                maxWidth: 1200,
                minWidth: 400,
                defaultScale: true,
                breakpoints: [
                  ResponsiveBreakpoint.resize(480, name: MOBILE),
                  ResponsiveBreakpoint.autoScale(800, name: TABLET),
                  ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                  ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                  ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                ],
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: screenGradient,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/Vegi-Logo-square.png',
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
