import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic, dynamic> data = {};
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, "/location");
              },
              label: Text("Edit Location"),
              icon: Icon(Icons.edit_location)
              )
        ],
      )),
    );
  }
}
