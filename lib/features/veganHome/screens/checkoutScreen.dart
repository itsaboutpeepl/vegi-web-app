import 'dart:html';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/common/router/routes.dart';
import 'package:vegan_liverpool/features/shared/widgets/secondaryButton.dart';
import 'package:vegan_liverpool/features/shared/widgets/snackbars.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/helpers.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/cart/deliveryInstructionsCard.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/cart/discountCard.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/cart/slotTimingsView.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/cart/tipCardView.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/shared/customAppBar.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/address/addressList.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/webViewHandlers.dart';
import 'package:vegan_liverpool/redux/actions/cart_actions.dart';
import 'package:vegan_liverpool/redux/viewsmodels/checkout.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  late Map<String, String> test;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CheckoutViewModel>(
      converter: CheckoutViewModel.fromStore,
      distinct: true,
      onInit: (store) {
        store.dispatch(getUserData());
      },
      builder: (_, viewmodel) {
        return Scaffold(
          appBar: CustomAppBar(
            pageTitle: "Checkout",
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddressList(),
                  SizedBox(height: 10),
                  SlotTimingsView(),
                  viewmodel.isDelivery ? TipCardView() : SizedBox.shrink(),
                  DiscountCard(),
                  DeliveryInstructionsCard(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25.0),
                    child: SecondaryButton(
                      width: double.infinity,
                      onPressed: () {
                        viewmodel.createOrder(
                          (errorMessage) {
                            //errorCallBack
                            showErrorSnack(context: context, title: errorMessage);
                          },
                          () {
                            //successCallBack
                            context.router.push(AwaitingPaymentPage());

                            print("PAYMENT INTENT ID IS" + viewmodel.paymentIntentID);
                          },
                        );
                      },
                      buttonContent: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              'Pay',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w900,
                                fontSize: 20.0,
                              ),
                            ),
                            Spacer(),
                            Text(
                              cFPrice(viewmodel.cartTotal),
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w900,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
