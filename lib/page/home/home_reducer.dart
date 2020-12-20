import 'package:TestFlutterRedux/page/home/home_state.dart';
import 'package:redux/redux.dart';

final HomeReducer = combineReducers<HomeState>([
  TypedReducer<HomeState, UpdateHomeNameAction>(_update),
]);

HomeState _update(HomeState homeState, UpdateHomeNameAction addAction) {
  addAction.homeState.name = "11111111111";
  homeState = addAction.homeState;
  return homeState;
}

class UpdateHomeNameAction {
  HomeState homeState;
  UpdateHomeNameAction(this.homeState);
}