import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/features/shared/widgets/secondaryButton.dart';
import 'package:vegan_liverpool/features/shared/widgets/snackbars.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/helpers.dart';
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
        store.dispatch(getUserWalletAddress());
      },
      builder: (_, viewmodel) {
        return Scaffold(
          appBar: CustomAppBar(
            pageTitle: viewmodel.userWalletAddress,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25.0),
                    child: SecondaryButton(
                      width: double.infinity,
                      onPressed: () {
                        viewmodel.createOrder((errorMessage) {
                          //errorCallBack
                          print("error took place");
                          showErrorSnack(context: context, title: errorMessage);
                        }, () {
                          //successCallBack
                          showModalBottomSheet(
                            backgroundColor: Colors.grey[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            elevation: 5,
                            context: context,
                            builder: (context) {
                              return Container(
                                child: Center(child: Text("Not implemented yet")),
                              );
                            },
                          );
                        });
                      },
                      buttonContent: Row(
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
