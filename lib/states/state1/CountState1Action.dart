

import 'package:redux/redux.dart';

import 'CountState1Redux.dart';

/// combineReducers的作用是把action和函数绑定起来，
/// 免去了写例如if (action is IncreaseAction)之类的判断语句。
/// 对应的action执行对应的函数。
final UserReducer = combineReducers<CountState1>([
  TypedReducer<CountState1, AddUserAction>(_add),
]);

/// 定义了一个要与AddUserAction绑定一起函数
/// 该函数的作用主要是修改数据，就是之前的if和else里各自要处理的逻辑
CountState1 _add(CountState1 user, AddUserAction addAction) {
  return user;
}

/// 定义了一个 action AddUserAction
class AddUserAction {
  CountState1 user;
  AddUserAction(this.user);
}