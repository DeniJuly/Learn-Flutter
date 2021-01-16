
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int num = 0;

  void handleChange(){
    setState(() {
      num++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn Animated Container'),),
      body: Center(
        child: GestureDetector(
          onTap: handleChange,
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
          ),
        ),
      ),
    );
  }
}
