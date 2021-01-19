import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.ac_unit, color: Colors.white,),
        title: Text('Learn App Bar'),
        actions: [
          IconButton(icon: Icon(Icons.settings_rounded), onPressed: (){})
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat
            )
          ),
        ),
      ),
      body: Container(),
    );
  }
}
