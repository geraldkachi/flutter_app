import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {
  String location;  // locationname of the UI
  String time;  // time in the location
  String flag; // url to an assets flag icon
  String url; // location url

  WorldTime({required this.location, required this.flag, required this.url}) : time = '';

      //  is Future is like a Promise
    Future<void> getTime() async {

      var urlPath = Uri.parse('http://worldtimeapi.org/api/timezone/$url'); 

      // make a request
      Response response = await get(urlPath);
      Map data = jsonDecode(response.body);
      print(data); 


      // get data properties
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);


      // create a new dateTime object
      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset)));
      // print(now);

      // set the time properties
      time = now.toString();
  }
}

WorldTime instance =  WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');