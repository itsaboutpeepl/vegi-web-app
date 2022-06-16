import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/viewsmodels/featuredRestaurantsVM.dart';

class VeganSliverAppBar extends StatefulWidget {
  const VeganSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  _VeganSliverAppBarState createState() => _VeganSliverAppBarState();
}

class _VeganSliverAppBarState extends State<VeganSliverAppBar> {
  String _dropdownValue = "L1";

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FeaturedRestaurantsVM>(
      converter: FeaturedRestaurantsVM.fromStore,
      distinct: true,
      builder: (_, viewmodel) {
        return SliverAppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          floating: false,
          pinned: false,
          snap: false,
          centerTitle: false,
          expandedHeight: MediaQuery.of(context).size.height * 0.1,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: colorToWhiteGradient,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              viewmodel.isDelivery ? "Delivering To " : "Collection",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            viewmodel.isDelivery
                                ? Padding(
                                    padding: const EdgeInsets.only(bottom: 1.5),
                                    child: DropdownButton<String>(
                                      menuMaxHeight: MediaQuery.of(context).size.height * 0.3,
                                      alignment: Alignment.centerLeft,
                                      isDense: true,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        fontFamily: "Europa",
                                      ),
                                      value: _dropdownValue,
                                      borderRadius: BorderRadius.circular(10),
                                      underline: SizedBox.shrink(),
                                      items: viewmodel.postalCodes
                                          .map(
                                            (value) => DropdownMenuItem<String>(
                                              child: Text(
                                                value,
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              value: value,
                                            ),
                                          )
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          _dropdownValue = value!;
                                          viewmodel.changeOutCode(value);
                                        });
                                      },
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            viewmodel.setIsDelivery(!viewmodel.isDelivery);
                          },
                          child: Text(
                            viewmodel.isDelivery ? "Switch to Collection" : "Switch to Delivery",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            centerTitle: true,
            collapseMode: CollapseMode.parallax,
          ),
        );
      },
    );
  }
}
