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
  State<VeganSliverAppBar> createState() => _VeganSliverAppBarState();
}

class _VeganSliverAppBarState extends State<VeganSliverAppBar> {
  String _dropdownValue = 'L1';

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
          centerTitle: false,
          expandedHeight: MediaQuery.of(context).size.height * 0.1,
          flexibleSpace: FlexibleSpaceBar(
            background: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: colorToWhiteGradient,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
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
                              viewmodel.isDelivery
                                  ? 'Delivering To '
                                  : 'Collection',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            if (viewmodel.isDelivery)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 1.5),
                                child: DropdownButton<String>(
                                  menuMaxHeight:
                                      MediaQuery.of(context).size.height * 0.3,
                                  alignment: Alignment.centerLeft,
                                  isDense: true,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontFamily: 'Europa',
                                  ),
                                  value: _dropdownValue,
                                  borderRadius: BorderRadius.circular(10),
                                  underline: const SizedBox.shrink(),
                                  items: viewmodel.postalCodes
                                      .map(
                                        (value) => DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style:
                                                const TextStyle(fontSize: 20),
                                          ),
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
                            else
                              const SizedBox.shrink(),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            viewmodel.setIsDelivery(!viewmodel.isDelivery);
                          },
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide()),
                            ),
                            child: Text(
                              viewmodel.isDelivery
                                  ? 'Switch to collection'
                                  : 'Switch to delivery',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
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
          ),
        );
      },
    );
  }
}
