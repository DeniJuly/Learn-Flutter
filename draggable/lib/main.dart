import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp(),));

class MyApp extends StatelessWidget {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color target;
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Draggable Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1,
                    elevation: 3,
                    shape: StadiumBorder(),
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.grey,
                    shape: StadiumBorder(),
                  ),
                ),
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1.withOpacity(0.7),
                    elevation: 3,
                    shape: StadiumBorder(),
                  ),
                ),
              )
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (val) => true,
              onAccept: (val) {isActive = true; target = val;},
              builder: (context, candidates, rejected){
              return (isActive) ?
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Material(
                    color: target,
                    shape: StadiumBorder(),
                  ),
                ) :
                 SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  );
              }
          )
        ],
      ),
    );
  }
}
