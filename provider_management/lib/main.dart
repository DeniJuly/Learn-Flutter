import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_management/applicationColor.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ApplicationColor>(
      create: (_) => new ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Consumer<ApplicationColor>(
            builder: (context, appColor, _) => Text(
              'Provider State Management',
              style: TextStyle(color: appColor.color),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, appColor, _) => AnimatedContainer(
                  duration: Duration(milliseconds: 10),
                  width: 100,
                  height: 100,
                  color: appColor.color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('AB'),
                  Consumer<ApplicationColor>(
                    builder: (context, appColor, _) => Switch(
                        value: appColor.isLightBlue,
                        onChanged: (newValue) {
                          appColor.isLightBlue = newValue;
                        }),
                  ),
                  Text('LB')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
