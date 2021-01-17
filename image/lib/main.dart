import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp(),));
    
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn Image Widget'),),
      body: Center(
        child: Column(children: [
          Image.network('https://picsum.photos/200/300', height: 200, width: 200,),
          Image.asset('assets/donat.png', height: 200, width: 200, fit: BoxFit.cover,)
        ],),
      ),
    );
  }
}
    