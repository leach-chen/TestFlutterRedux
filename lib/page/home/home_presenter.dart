
import 'package:TestFlutterRedux/other/base/BasePresenter.dart';
import 'package:TestFlutterRedux/other/base/BaseImpl.dart';
import 'package:TestFlutterRedux/page/home/home_reducer.dart';

class HomePresenter <T extends BaseImplState> extends BasePresenter
{
  
  HomePresenter(BaseImplState impl) : super(impl);


  updateName()
  {
    this.mStore.dispatch(UpdateHomeNameAction(this.mStore.state.homeState));
  }
}