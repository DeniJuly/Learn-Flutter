import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Image.network('flutter packages get'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click me'),
        backgroundColor: Colors.amber,
      ),
    ),
));