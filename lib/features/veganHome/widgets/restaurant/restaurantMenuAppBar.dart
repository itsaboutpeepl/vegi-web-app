import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/viewsmodels/restaurantItem.dart';

class RestaurantMenuAppBar extends StatelessWidget {
  const RestaurantMenuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RestaurantItemViewModel>(
      converter: RestaurantItemViewModel.fromStore,
      distinct: true,
      builder: (_, viewmodel) {
        return SliverAppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          pinned: true,
          titleSpacing: 0,
          flexibleSpace: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colorToWhiteGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: FlexibleSpaceBar(
              titlePadding:
                  const EdgeInsetsDirectional.only(bottom: 16, start: 56),
              centerTitle: false,
              title: Text(viewmodel.restaurantName),
            ),
          ),
        );
      },
    );
  }
}
