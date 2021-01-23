import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp(),));

class MyApp extends StatelessWidget {
  TabBar myTabBar = TabBar(
    indicator: BoxDecoration(
      color: Colors.amberAccent,
      border: Border(bottom: BorderSide(color: Colors.white, width: 2))
    ),
    tabs: [
      Tab(icon: Icon(Icons.comment), text: "Comment",),
      Tab(child: Image(image: AssetImage('assets/icons/in-love.png'),),),
      Tab(icon: Icon(Icons.comment),),
      Tab(text: 'Comment')
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Learn App Bar'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
            child: Container(
              color: Colors.amber,
              child: myTabBar,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
            Center(
              child: Text('Tab 4'),
            ),
          ],
        ),
      ),
    );
  }
}
