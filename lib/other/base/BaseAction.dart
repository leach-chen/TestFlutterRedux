import 'package:TestFlutterRedux/other/base/BaseImpl.dart';
import 'package:TestFlutterRedux/other/store/ReduxState.dart';
import 'package:redux/redux.dart';

class BaseAction 
{
    Store<ReduxState> mStore;
    
    BaseImplState mImpl;

    BaseAction(BaseImplState impl)
    {
        this.mImpl = impl;
        impl.setAction(this);
    }

    void setStore(Store<ReduxState> store)
    {
      this.mStore = store;
    }
}