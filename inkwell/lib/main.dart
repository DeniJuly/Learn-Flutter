import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learn InkWell Wiget'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              onPressed: (){},
              child: Text('Raised Button'),
              color: Colors.amber,
              shape: StadiumBorder(),
              elevation: 1,
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 3,
              child: Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purpleAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    child: Center(child: Text('My Button', style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
