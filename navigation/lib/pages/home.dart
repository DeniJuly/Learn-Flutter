import 'package:flutter/material.dart';
import 'package:navigation/pages/second.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context){
                      return Second();
                    }
                  )
            );
          },
          child: Text('Home'),
          color: Colors.blue,
        ),
      ),
    );
  }
}
