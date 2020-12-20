
import 'package:TestFlutterRedux/other/base/BaseAction.dart';
import 'package:TestFlutterRedux/other/base/BaseImpl.dart';
import 'package:TestFlutterRedux/page/home/home_reducer.dart';

class HomeAction <T extends BaseImplState> extends BaseAction
{
  HomeAction(BaseImplState<BaseAction> impl) : super(impl);

  updateName()
  {
    this.mStore.dispatch(UpdateHomeNameAction(this.mStore.state.homeState));
  }
}