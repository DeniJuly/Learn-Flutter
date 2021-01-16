import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp(),));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn Flexible Widget'),),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.green,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
          ),
          Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.green,
              )
          ),
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.blue,
              )
          )
        ],
      ),
    );
  }
}
