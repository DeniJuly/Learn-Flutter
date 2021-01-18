import 'package:flutter/material.dart';
import 'package:navigation/pages/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Login Button'),
          color: Colors.blue,
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder:(context){
                  return Home();
                }
            ));
          },
        ),
      ),
    );
  }
}
