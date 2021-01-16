import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 0;

  void handleAddWidgets() {
    setState(() {
      widgets.add(Text("Data ke ${counter}", style: TextStyle(fontSize: 35),));
      counter++;
    });
  }

  void handleDeleteWidget(){
    setState(() {
      widgets.removeLast();
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar List View'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                onPressed: handleAddWidgets,
                child: Text('Add Data'),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: handleDeleteWidget,
                child: Text('Del Data'),
                color: Colors.red,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      )
    );
  }
}
