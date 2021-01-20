import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp()
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: 'Init Value');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn TextField'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            SizedBox(height: 15),
            Text(controller.text)
          ],
        ),
      ),
    );
  }
}
