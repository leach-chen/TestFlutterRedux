
import 'package:TestFlutterRedux/other/store/ReduxState.dart';
import 'package:TestFlutterRedux/page/home/home_reducer.dart';
import 'package:TestFlutterRedux/page/mycenter/mycenter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<ReduxState>(
        builder: (BuildContext context, Store<ReduxState> store){
          return Scaffold(
            appBar: AppBar(
              title: Text('Top Screen'),
            ),
            body: Container(
              child: Column(
                children: [
                  new GestureDetector(
                    onTap: () {
                        //final snackBar = new SnackBar(content: new Text('你点击了登录注册'));
                        //Scaffold.of(context).showSnackBar(snackBar);
                       Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return MyCenterPage();
                        })); 
                        store.dispatch(UpdateHomeNameAction(store.state.homeState));
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
            ),
          );
        }
    );
  }
}
