import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String loading = 'Loading';

  void getData() async {
    WorldTime time = WorldTime(location: 'London', url: 'Europe/London', flag: 'London');
    await time.getData();
    setState(() {
      loading = time.time;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text(loading),
      ),
    );
  }
}
