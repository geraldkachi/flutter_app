import 'package:flutter/material.dart';
import 'package:flutter_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: "London", flag: "uk.png", url: "Europe/London"),
    WorldTime(location: "Athens", flag: "greece.png", url: "Europe/Berlin"),
    WorldTime(location: "Cairo", flag: "egypt.png", url: "Africa/Cairo"),
    WorldTime(location: "Nairobi", flag: "kenya.png", url: "Africa/Nairobi"),
    WorldTime(location: "Chicago", flag: "usa.png", url: "America/Chicago"),
    WorldTime(location: "New York", flag: "usa.png", url: "America/New_York"),
    WorldTime(location: "Seoul", flag: "south_korea.png", url: "Asia/Seoul"),
    WorldTime(location: "Jakarta", flag: "indonesia.png", url: "Asia/Jakarta"),
  ];

  void updateTime (index) async {
    WorldTime instance = locations[index];
    await instance.getTime(); 

    Navigator.pop(context, {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time,
      "isDaytime": instance.isDaytime,
    });
  }

  int counter = 0;
  void getData() async {
    await Future.delayed(const Duration(seconds: 3), () {
      print('yoshi');
    });
    Future.delayed(const Duration(seconds: 2), () {
      print('egg colletor');
    });
    print('statement');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    // print("initState function called 0");
  }

  @override
  Widget build(BuildContext context) {
    print("initState function called 1");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(style: TextStyle(color: Colors.white), "Choose A Location"),
        centerTitle: true,
        elevation: 0,
      ),
      // body: TextButton(
      //   onPressed: () {
      //     setState(() {
      //       counter += 1;
      //     });
      //   },
      //     child: Text('Choose a location button ${counter}'),
      // ),
      body: Container(
        child: Stack(
          children: [
            ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      // print(locations[index].location);
                       updateTime(index);
                    },
                    title: Text(locations[index].location),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/${locations[index].flag}'),
                    ),
                  ),
                ),
              );
            }),




             Positioned(
              bottom:  100,
              left:  0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                   TextButton.icon(
                    onPressed: () => Navigator.pushNamed(context,'/quote_list'),
                    label: const Text("Quote"),
                    icon: const Icon(Icons.ac_unit_sharp),
                    ),
                   TextButton.icon(
                    onPressed: () => Navigator.pushNamed(context,'/home_screen'),
                    label: const Text("Chats"),
                    icon: const Icon(Icons.ac_unit_sharp),
                    ),
                   TextButton.icon(
                    onPressed: () => Navigator.pushNamed(context,'/ticket_screen'),
                    label: const Text("Ticket Screen"),
                    icon: const Icon(Icons.ac_unit_sharp),
                    ),
                ],
              ),
            )
          ],  
        )
      ),
    );
  }
}
