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
  },
  // home: ChooseLocation(),
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

// Widget quoteTemplate(quote) {
//   return QuoteCard(quote: quote);
// }

// Widget quoteTemplate(quote) {
//   return Card(
//     margin: const EdgeInsets.fromLTRB(16.0,16.0,16.0, 0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Text(
//           quote.text,
//           style: TextStyle(
//             fontSize: 18.0,
//             color: Colors.grey[600]
//           )
//           ),
//           SizedBox(height: 6.0),
//         Text(
//           quote.author,
//           style: TextStyle(
//             fontSize: 14.0,
//             color: Colors.grey[800]
//           )
//           ),
//       ],
//     ),
//   );
// }

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


// class QuoteCard extends StatelessWidget {
//   final Quote quote;
//   const QuoteCard({required this.quote});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//     margin: const EdgeInsets.fromLTRB(16.0,16.0,16.0, 0),
//     child: Padding(
//       padding: EdgeInsets.all(12.0),
//       child: Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Text(
//           quote.text,
//           style: TextStyle(
//             fontSize: 18.0,
//             color: Colors.grey[600]
//           )
//           ),
//           SizedBox(height: 6.0),
//         Text(
//           quote.author,
//           style: TextStyle(
//             fontSize: 14.0,
//             color: Colors.grey[800]
//           )
//           ),
//       ],
//     ),)
//   );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
