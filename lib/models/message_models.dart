// import 'package:flutter_chat';

import 'package:flutter_app/models/user_models.dart';

class Message {
  final String sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
      required this.sender,
      required this.time,
      required this.text,
      required this.isLiked,
      required this.unread
      });
}

// You - current user
final User currentUser =
    User(id: 0, name: "Gerald kachi", imageUrl: 'assets/images/greg.jpg');

// Users
final User greg =
    User(id: 1, name: "Kris Daniel", imageUrl: 'assets/images/greg.jpg');
final User james =
    User(id: 1, name: "James Madtin ", imageUrl: 'assets/images/james.jpg');


  List<User> favourites = [greg, james];
  List<User> chats = [greg, james];

List<Message> messages = [
  Message(
      sender: 'james',
      time: '05:34 PM',
      text: " To hell with the dummy data",
      isLiked: false,
      unread: false)
];
