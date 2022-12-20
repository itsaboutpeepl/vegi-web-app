import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/menu/restaurantMenu.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/redux/viewsmodels/restaurantItem.dart';

class RestaurantMenuScreen extends StatelessWidget {
  const RestaurantMenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RestaurantItemViewModel>(
      converter: RestaurantItemViewModel.fromStore,
      distinct: true,
      // onInitialBuild: (viewModel) {
      //   viewModel.filterRestaurantMenu(
      //     query: '',
      //   );
      // },
      builder: (_, viewmodel) {
        return Scaffold(
          body: RestaurantMenuList(
            featuredList: viewmodel.featuredList,
            groupedList: viewmodel.groupedList,
            categories: viewmodel.categories,
          ),
        );
      },
    );
  }
}
