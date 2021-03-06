

import 'package:TestFlutterRedux/other/store/ReduxState.dart';
import 'package:TestFlutterRedux/page/home/home_state.dart';
import 'package:TestFlutterRedux/page/mycenter/mycenter_state.dart';
import 'package:redux/redux.dart';

createStore(){
  final store = Store<ReduxState>(
      getReduce,
      initialState: ReduxState(
        homeState: HomeState.initData(),
        myCenterState: MyCenterState.initData(),
      )
  );
  return store;
}