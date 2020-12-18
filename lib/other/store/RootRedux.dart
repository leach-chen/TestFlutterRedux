
import 'package:TestFlutterRedux/states/state1/CountState1Redux.dart';
import 'package:TestFlutterRedux/states/state2/count_state2.dart';

/// 定义一个state
class RootRedux {
  CountState1 countState1;
  CountState2 countState2;
  RootRedux({this.countState1, this.countState2});
}

/// 定义action，将action放到各自的reducer类里去定义

/// 定义reducer
RootRedux getReduce(RootRedux state, action) {
  return RootRedux(
    countState1: reducer(state.countState1, action),
    countState2: reducer2(state.countState2, action)
  );
}