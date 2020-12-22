
import 'package:TestFlutterRedux/other/base/BasePresenter.dart';
import 'package:TestFlutterRedux/other/base/BaseImpl.dart';
import 'package:TestFlutterRedux/other/store/ReduxState.dart';
import 'package:TestFlutterRedux/page/home/home_presenter.dart';
import 'package:TestFlutterRedux/page/mycenter/mycenter_page.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class HomePage extends BaseImpl {

  @override
  State<StatefulWidget> initPage() {
    var impl = _HomePageState<HomePresenter>();
    HomePresenter<_HomePageState>(impl);
    return impl;
  }
}


class _HomePageState <T extends BasePresenter> extends BaseImplState
{
    @override
    initWidget(Store<ReduxState> store) {
        return Container(
            child: Column(
              children: [
                new GestureDetector(
                  onTap: () {
                      //final snackBar = new SnackBar(content: new Text('你点击了登录注册'));
                      //Scaffold.of(mContext).showSnackBar(snackBar);
                      Navigator.of(mContext).push(MaterialPageRoute(builder: (BuildContext context){
                        return MyCenterPage();
                      })); 

                      //store.state.homeState.name = "bbbbbbbbbbbbbbbb";
                      //store.dispatch(UpdateHomeNameAction(store.state.homeState));
                      (mAction as HomePresenter).updateName();
                  },
                  child: new Container(
                    alignment: Alignment.center,
                    margin: new EdgeInsets.only(top: 83.0),
                    padding: new EdgeInsets.only(
                        top: 14.0, left: 22.0, bottom: 14.0, right: 22.0),
                    child: new Text(
                      "Go",
                      style: new TextStyle(
                        fontSize: 16.0,
                        color: const Color(0xffffffff),
                      ),
                    ),
                    decoration: new BoxDecoration(
                      color: const Color(0xFF03BEFD),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
                Text(store.state.homeState.name),
                Text(store.state.myCenterState.name)
            ],
          ),
       );
  }
}