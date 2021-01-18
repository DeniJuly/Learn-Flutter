import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Second Button'),
          color: Colors.blue,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
