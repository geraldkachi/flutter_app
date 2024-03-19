import 'dart:convert';


class WorldTime {
  String location;  // locationname of the UI
  String time;  // time in the location
  String flag; // url to an assets flag icon
  String url; // location url

  WorldTime({ this.location, this.flag, this.url});

      //  is Future is like a Promise
    Future<void> getTime() async {

      // make a request
      Response response get('https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      print(data);


      // get data properties
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      print(datetime);
      print(offset);


      // create a new dateTime object
      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset)));
      // print(now);

      // set the time properties
      time = now.toString();
  }
}

// WorldTime instance =  WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');