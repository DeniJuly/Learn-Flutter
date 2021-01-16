import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String location;
  String time;
  String url;
  String flag;

  WorldTime({this.location, this.url, this.flag});

  Future<void> getData() async {

    try{
      Response res = await get(
          'https://world-time2.p.rapidapi.com/timezone/Europe/London',
          headers: {
            "x-rapidapi-key": "3dcfb19024msh9ced559749224b1p1249aajsnb88f74ad3101",
            "x-rapidapi-host": "world-time2.p.rapidapi.com"
          }
      );
      if(res.statusCode == 200){
        Map response = jsonDecode(res.body);
        String datetime = response['datetime'];
        String offset = response['utc_offset'].substring(1,3);
        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset)));
        this.time = now.toString();
      } else {
        this.time = res.statusCode.toString();
      }
    } catch(e) {
      print('error: $e');
    }
  }
}