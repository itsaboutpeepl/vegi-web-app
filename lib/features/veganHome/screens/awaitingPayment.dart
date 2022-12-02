import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/common/router/routes.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/checkout/dialogs/error_dialog.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';

class AwaitingPaymentPage extends StatelessWidget {
  const AwaitingPaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, void Function()>(
      converter: (store) {
        return () => store.dispatch(ResetOrderProcess());
      },
      onInit: (store) {
        store.dispatch(
          startPaymentConfirmationCheck(
            successCallback: () => context.router.push(OrderConfirmedScreen()),
            errorCallback: (error) {
              showDialog(
                context: context,
                builder: (_) => ErrorDialog(
                  message: error.toString(),
                ),
              );
            },
          ),
        );
      },
      builder: (_, resetOrderProcess) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const BackButtonIcon(),
              color: Colors.black,
              onPressed: () {
                resetOrderProcess();
                context.router.pop();
              },
            ),
          ),
          body: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.15,
                right: 30,
                left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Awaiting Payment",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Checking all is good with the business and riders.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Thanks for supporting your local community!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 50,
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
