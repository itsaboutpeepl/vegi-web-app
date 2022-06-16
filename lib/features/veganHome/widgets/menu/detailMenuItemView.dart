import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/helpers.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/menu/detailMenuViewFloatingBar.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/menu/productOptionsView.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/actions/menu_item_actions.dart';
import 'package:vegan_liverpool/redux/viewsmodels/detailMenuItem.dart';

class DetailMenuItemView extends StatefulWidget {
  const DetailMenuItemView({Key? key}) : super(key: key);
  @override
  _DetailMenuItemViewState createState() => _DetailMenuItemViewState();
}

class _DetailMenuItemViewState extends State<DetailMenuItemView> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DetailMenuItem>(
      converter: DetailMenuItem.fromStore,
      onInit: (store) {
        store.dispatch(fetchProductOptions(store.state.menuItemState.menuItem!.menuItemID));
      },
      builder: (_, viewmodel) {
        return Stack(
          children: [
            Scaffold(
              body: ListView(
                physics: ClampingScrollPhysics(),
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 350.0,
                        child: CachedNetworkImage(
                          imageUrl: viewmodel.menuItem!.imageURL,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: -1,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[800]!,
                                offset: Offset(0, -5),
                                blurRadius: 10,
                              )
                            ],
                            borderRadius: BorderRadius.vertical(top: Radius.circular(100)),
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          viewmodel.menuItem!.name,
                          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          cFPrice(viewmodel.totalPrice),
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          parseHtmlString(viewmodel.menuItem!.description),
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ProductOptionsView(),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DetailMenuViewFloatingBar(),
          ],
        );
      },
    );
  }
}
