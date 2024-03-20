import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/models/message_models.dart';

class RecentChat extends StatelessWidget {
  const RecentChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 300.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )),
      child: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage(chats[index].imageUrl),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(chats[index].name,
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),
                      ),
                      Text(chats[index].name)
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(chats[index].name),
                  Text("NEW")
                ],
              )
            ],
          );
        },
      ),
    ));
  }
}
