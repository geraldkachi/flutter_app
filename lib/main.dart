// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/choose_location.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/loading.dart';
import 'package:flutter_app/quote.dart';
import 'package:flutter_app/quote_card.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/ticket_booking/ticket_booking.dart';
import 'package:flutter_app/utils/app_style.dart';

void main() => runApp(MaterialApp(
  initialRoute: "//",
  // initialRoute: "/",
  debugShowCheckedModeBanner: false,
  title: 'Flutter Chat Ui',
  theme: ThemeData(
    // primaryColor:Colors.red,
    primaryColor: Styles.primaryColor,
    hintColor:  Color(0xFFFEF9EB),
   ),
  routes: { 
    "/": (context) => Loading(),
    "/home": (context) => Home(),
    "/location": (context) => ChooseLocation(),
    "/home_screen": (context) => const HomeScreen(),
    "/ticket_screen": (context) => const TicketBooking(),
    "/quote_list": (context) => const QuoteList(),
  },
  // home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

List<Quote> quotes = [
  Quote(author: "Oscar wilder", text: 'Be Yourself: everyone else is already taken'),
  Quote(author: "Oscar wilder", text: "I have nothing to declare except my genius"),
  Quote(author: "Oscar wilder", text: "The truth is rarely pure and never simple")
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quote"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding( 
        padding: const EdgeInsets.all(12.0),
        child: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
          )).toList(),
        // children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        // children: quotes.map((quote) => Text(quote)).toList(),
        )),
    );
  }
}