

import 'package:TestFlutterRedux/page/home/home_reducer.dart';
import 'package:TestFlutterRedux/page/home/home_state.dart';

class ReduxState
{
  HomeState homeState;
  ReduxState({this.homeState});
}

ReduxState getReduce(ReduxState reduxState,action)
{
  return ReduxState(
    homeState: HomeReducer(reduxState.homeState,action)
  );
}
