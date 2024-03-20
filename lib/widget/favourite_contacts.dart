import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/models/message_models.dart';

class FavouriteContacts extends StatefulWidget {
  const FavouriteContacts({super.key});

  @override
  State<FavouriteContacts> createState() => _FavouriteContactsState();
}

class _FavouriteContactsState extends State<FavouriteContacts> {
  // List<String> favourites = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("favourite Contacts"),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              )),
          Container(
              height: 120.0,
              //  color: Colors.blue,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 18.0 ),
                itemCount: favourites.length,
                itemBuilder: (BuildContext context, int index) {
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(favourites[index].imageUrl),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          favourites[index].name,
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ]));
                },
              ))
        ]));
  }
}
