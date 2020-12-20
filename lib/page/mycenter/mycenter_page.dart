
import 'package:flutter/material.dart';

class MyCenterPage extends StatefulWidget {
  @override
  _MyCenterPageState createState() => _MyCenterPageState();
}


class _MyCenterPageState extends State<MyCenterPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Screen'),
      ),
      body: Container(
        child: Column(
          children: [
            Text("mycenter")
          ],
        ),
      ),
    );
  }
  
}