import 'package:equatable/equatable.dart';
import 'package:redux/redux.dart';
import 'package:vegan_liverpool/models/app_state.dart';

class RestaurantMenuViewModel extends Equatable {
  const RestaurantMenuViewModel({
    required this.menuSearchIsVisible,
  });

  factory RestaurantMenuViewModel.fromStore(Store<AppState> store) {
    return RestaurantMenuViewModel(
      menuSearchIsVisible: store.state.homePageState.showMenuSearchBarField,
    );
  }

  final bool menuSearchIsVisible;

  @override
  List<Object> get props => [
        menuSearchIsVisible,
      ];
}
