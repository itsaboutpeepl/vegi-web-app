import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/menu/detailMenuViewQuantityButton.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/restaurant/cartItem.dart';
import 'package:vegan_liverpool/redux/viewsmodels/detailMenuItem.dart';

class DetailMenuViewFloatingBar extends StatefulWidget {
  const DetailMenuViewFloatingBar({Key? key}) : super(key: key);

  @override
  _DetailMenuViewFloatingBarState createState() => _DetailMenuViewFloatingBarState();
}

class _DetailMenuViewFloatingBarState extends State<DetailMenuViewFloatingBar> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DetailMenuItem>(
      converter: DetailMenuItem.fromStore,
      builder: (_, viewmodel) {
        return Positioned(
          bottom: 0,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  color: themeShade300,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[800]!,
                      offset: Offset(0, -5),
                      blurRadius: 10,
                    )
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      DetailMenuViewQuantityButton(),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          List<CartItem> orderList = [];

                          for (var i = 0; i < viewmodel.quantity; i++) {
                            orderList.add(
                              CartItem(
                                internalID: Random(DateTime.now().millisecondsSinceEpoch).nextInt(10000),
                                menuItem: viewmodel.menuItem!,
                                totalItemPrice: viewmodel.totalPrice,
                                itemQuantity:
                                    1, //this quantity always needs to be 1 to work with the api. the actual quantity of the object is calculated using the viewmodel quantity field. Then the object is just duplicated and added to the cart items.
                                selectedProductOptions: viewmodel.selectedOptions,
                              ),
                            );
                          }

                          viewmodel.addOrderItems(orderList);
                          Navigator.pop(context);
                          Future.delayed(
                            Duration(seconds: 1),
                            (() => viewmodel.resetMenuItem()),
                          );
                        },
                        child: Text("Add to Tote"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          fixedSize: Size(120, 40),
                          textStyle: TextStyle(fontWeight: FontWeight.w900),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   top: -45,
              //   left: (MediaQuery.of(context).size.width * 0.5) - 45,
              //   child: FlippyCircle(
              //     rewardAmount: viewmodel.itemReward.toStringAsFixed(0),
              //   ),
              // )
            ],
          ),
        );
      },
    );
  }
}
