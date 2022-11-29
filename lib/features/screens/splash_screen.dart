import 'package:auto_route/auto_route.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:vegan_liverpool/common/router/routes.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/user_actions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 1), () => context.router.push(VeganHomeScreen()));
    return Scaffold(
      body: Container(
        color: themeShade1200,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .5,
              child: Image.asset(
                'assets/images/Vegi-Logo-square.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
