import 'package:meta/meta.dart';

/**
 * State中所有属性都应该是只读的
 */
@immutable
class CountState2 {
  final int _count;
  get count => _count;

  CountState2(this._count);

  CountState2.initState() : _count = 0;
}

/**
 * 定义操作该State的全部Action
 * 这里只有增加count一个动作
 */
enum Action2 { increment }

/**
 * reducer会根据传进来的action生成新的CountState
 */
CountState2 reducer2(CountState2 state, action) {
  //匹配Action
  if (action == Action2.increment) {
    return CountState2(state.count + 1);
  }
  return state;
}
