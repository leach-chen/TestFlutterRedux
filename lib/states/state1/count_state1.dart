/* import 'package:meta/meta.dart';

/**
 * State中所有属性都应该是只读的
 */
@immutable
class CountState1 {
  final int _count;
  get count => _count;

  CountState1(this._count);

  CountState1.initState() : _count = 0;
}

/**
 * 定义操作该State的全部Action
 * 这里只有增加count一个动作
 */
enum Action1 { increment }

/**
 * reducer会根据传进来的action生成新的CountState
 */
CountState1 reducer(CountState1 state, action) {
  //匹配Action
  if (action == Action1.increment) {
    return CountState1(state.count + 1);
  }
  return state;
}
 */