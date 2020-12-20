import 'package:TestFlutterRedux/page/home/home_state.dart';
import 'package:redux/redux.dart';

final HomeReducer = combineReducers<HomeState>([
  TypedReducer<HomeState, UpdateUserNameAction>(_update),
]);

HomeState _update(HomeState homeState, UpdateUserNameAction addAction) {
  addAction.homeState.name = "小明";
  homeState = addAction.homeState;
  return homeState;
}

class UpdateUserNameAction {
  HomeState homeState;
  UpdateUserNameAction(this.homeState);
}