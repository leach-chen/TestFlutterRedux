import 'package:TestFlutterRedux/other/base/BaseAction.dart';
import 'package:TestFlutterRedux/other/base/IBaseImpl.dart';
import 'package:TestFlutterRedux/other/base/IBaseImplState.dart';
import 'package:TestFlutterRedux/other/store/ReduxState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

abstract class BaseImpl extends StatefulWidget  implements IBaseImpl
{
    @override
    State<StatefulWidget> createState() {
      return initPage();
    }
}

abstract class BaseImplState<T extends BaseAction> extends State<BaseImpl>  implements IBaseImplState{

      BuildContext mContext;
      T mAction;

      void setAction(T action) {
        mAction = action;
      }

      @override
      Widget build(BuildContext context) {
         return StoreBuilder<ReduxState>(
            builder: (BuildContext context, Store<ReduxState> store){
               return Scaffold(
                body: Builder(builder: (BuildContext context){
                  mContext = context;
                  mAction.setStore(store);
                  return Container(
                    child: initWidget(store),
                  );
                }),
              );  
         });
      }

      showToast(String str)
      {
        final snackBar = new SnackBar(content: new Text(str));
        Scaffold.of(mContext).showSnackBar(snackBar);
      }


}