import 'package:TestFlutterRedux/other/base/BaseImpl.dart';
import 'package:TestFlutterRedux/other/store/ReduxState.dart';
import 'package:redux/redux.dart';

class BasePresenter 
{
    Store<ReduxState> mStore;
    
    BaseImplState mImpl;

    BasePresenter(BaseImplState impl)
    {
        this.mImpl = impl;
        impl.setAction(this);
    }

    void setStore(Store<ReduxState> store)
    {
      this.mStore = store;
    }
}