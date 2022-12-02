import 'package:flutter/material.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/restaurant/featuredRestaurantList.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/shared/navDrawer.dart';
import 'package:vegan_liverpool/features/veganHome/widgets/shared/veganSliverAppBar.dart';

class VeganHomeScreen extends StatelessWidget {
  const VeganHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (_, flag) => [
          VeganSliverAppBar(),
        ],
        body: FeaturedRestaurantList(),
      ),
    );
  }
}
