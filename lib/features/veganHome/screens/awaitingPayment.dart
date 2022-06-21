import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/common/router/routes.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/features/shared/widgets/my_scaffold.dart';
import 'package:vegan_liverpool/features/shared/widgets/snackbars.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';
import 'package:vegan_liverpool/redux/viewsmodels/checkout.dart';

class AwaitingPaymentPage extends StatelessWidget {
  const AwaitingPaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CheckoutViewModel>(
      converter: CheckoutViewModel.fromStore,
      onInit: (store) {
        store.dispatch(
            startCheckTimer(() => context.router.push(OrderConfirmedScreen()), () => showErrorSnack(context: context)));
      },
      builder: (_, viewmodel) {
        return MyScaffold(
          title: "Confirming Payment",
          body: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2, right: 30, left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Awaiting payment confirmation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CircularProgressIndicator(
                  color: themeShade500,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
