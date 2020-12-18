import 'package:TestFlutterRedux/states/state1/CountState1Types.dart';
import 'package:meta/meta.dart';

@immutable
class CountState1 {
  final int _count;
  get count => _count;

  CountState1(this._count);

  CountState1.initState() : _count = 0;
}

CountState1 reducer(CountState1 state, action) {
  //匹配Action
  if (action == Action1.increment) {
    return CountState1(state.count + 1);
  }
  return state;
}