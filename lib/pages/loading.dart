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
String time = "Loading";

// void getData() async {
//   Response response = await get('https://jsonplaceholder.typicode.com/todos/1' as Uri);
//   Map data = jsonDecode(response.body);
//   print(data);
// }

void setUpWorldTime() async {
  WorldTime instance =  WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
  await instance.getTime();
  print(instance.time);
  setState(() {
    time = instance.time;
  });
}

@override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(child: Text("Loading")),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time)),
    );
  }
}