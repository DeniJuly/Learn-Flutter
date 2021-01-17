import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn Spacer Widget'),),
      body: Center(
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Spacer(flex: 1,),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Spacer(flex: 1,),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
