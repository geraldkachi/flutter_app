import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/services/world_time.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
// String time = "Loading";

// void getData() async {
//   Response response = await get('https://jsonplaceholder.typicode.com/todos/1' as Uri);
//   Map data = jsonDecode(response.body);
//   print(data);
// }

void setUpWorldTime() async {
  WorldTime instance =  WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
  await instance.getTime();
  // Navigator.pushNamed(context, '/home');
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
    "isDaytime": instance.isDaytime,
  });
  // print(instance.time);

  // setState(() {
  //   time = instance.time;
  // });
}

@override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text("Loading ", style: TextStyle(fontSize: 45),)),
      ),
    );
  }
}