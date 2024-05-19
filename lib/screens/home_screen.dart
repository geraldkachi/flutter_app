import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/models/message_models.dart';
import 'package:flutter_app/ticket_booking/ticket_booking.dart';
import 'package:flutter_app/widget/category_selector.dart';
import 'package:flutter_app/widget/favourite_contacts.dart';
import 'package:flutter_app/widget/recent_chat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          iconSize: 30.0,
          onPressed: () => {},
        ),
        title: const Text("Chats",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              iconSize: 30.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TicketBooking()),
                );
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
              child: Container(
            height: 500.0,
            decoration: BoxDecoration(
                color: Theme.of(context).hintColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
            child: const Column(
              children: <Widget>[FavouriteContacts(), RecentChats()],
            ),
          ))
        ],
      ),
    );
  }
}
