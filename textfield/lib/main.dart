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
  bool showPassword = false;
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
              decoration: new InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
                suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye_outlined, color: Colors.amber,),onPressed: (){
                  setState(() {
                    showPassword = !showPassword;
                  });
                },)
              ),
              obscureText: showPassword,
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
