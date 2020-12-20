

import 'package:TestFlutterRedux/page/home/home_reducer.dart';
import 'package:TestFlutterRedux/page/home/home_state.dart';
import 'package:TestFlutterRedux/page/mycenter/mycenter_reducer.dart';
import 'package:TestFlutterRedux/page/mycenter/mycenter_state.dart';

class ReduxState
{
  HomeState homeState;
  MyCenterState myCenterState;
  ReduxState({this.homeState,this.myCenterState});
}

ReduxState getReduce(ReduxState reduxState,action)
{
  return ReduxState(
    homeState: HomeReducer(reduxState.homeState,action),
    myCenterState: MyCenterReducer(reduxState.myCenterState,action)
  );
}
