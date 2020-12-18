import 'package:TestFlutterRedux/states/state1/CountState1Redux.dart';
import 'package:TestFlutterRedux/under_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Screen'),
      ),
      body: Center(
        child: StoreConnector<CountState1,int>(
          converter: (store) => store.state.count,
          builder: (context, count) {
            return Text(
              count.toString(),
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return UnderScreen();
          })); 
        },
        child: Icon(Icons.forward),
      ),
    );
  }
}
