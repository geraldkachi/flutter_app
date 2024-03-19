import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

int counter = 0;
void getData() async {
  await Future.delayed(Duration(seconds: 3), () {
    print('yoshi');
  });
  Future.delayed(Duration(seconds: 2), () {
    print('egg colletor');
  });
    print('statement');
}

@override
  void initState() {
    // TODO: implement initState  
    super.initState();
    getData();
    print("initState function called 0");
  }

  @override
  Widget build(BuildContext context) {
    print("initState function called 1");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          style: TextStyle(color: Colors.white ),
          "Choose A Location"),
        centerTitle: true,
        elevation: 0,
        ),
      body: TextButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
          child: Text('Choose a location button ${counter}'),
      ),
    );
  }
}