import 'package:auto_route/auto_route.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:vegan_liverpool/common/router/routes.dart';

class SplashScreen extends StatefulWidget {
  final void Function(bool isLoggedIn)? onLoginResult;
  const SplashScreen({
    Key? key,
    this.onLoginResult,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () => context.router.push(VeganHomeScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
