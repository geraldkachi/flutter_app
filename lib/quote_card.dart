import 'package:flutter/material.dart';
import 'package:flutter_app/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({required this.quote, required this.delete});
  

  @override
  Widget build(BuildContext context) {
    return Card(
    margin: const EdgeInsets.fromLTRB(16.0,16.0,16.0, 0),
    child: Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          quote.text,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[600]
          )
          ),
          SizedBox(height: 6.0),
        Text(
          quote.author,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[800]
          ),
          ),
          SizedBox( height: 8.0),
          TextButton.icon(
            onPressed: () => delete(),
            label: Text("delete quote"),
            icon: Icon(Icons.delete),
          )
      ],
    ),)
  );
  }
}


// Buttons are classified broadly into the following categories:

// Elevated Button
// Floating Action Button
// Outlined Button
// Icon Button
// Text Button
// Dropdown Button
// PopUp Menu Button


// TextButton()
// ElevatedButton(?)
// FloatingActionButton()
// OutlinedButton()
// IconButton()
// DropdownButton()
  //     eg: String dropdownvalue = 'Profile';
 
  //             var items = [
  //               'Profile',
  //               'Settings',
  //               'Account',
  //               'Go Premium',
  //               'Logout',
  //             ];
             
  //  DropdownButton(
  //             focusColor: Colors.green,
  //             value: dropdownvalue,
  //             icon: const Icon(Icons.keyboard_arrow_down),
  //             items: items.map((String items) {
  //               return DropdownMenuItem(
  //                 value: items,
  //                 child: Text(
  //                   items,
  //                   style: TextStyle(
  //                     color: Colors.green,
  //                   ),
  //                 ),
  //               );
  //             }).toList(),
  //             onChanged: (String? newValue) {
  //               setState(() {
  //                 dropdownvalue = newValue!;
  //               });
  //             },
  //           ),
// PopupMenuButton()
    // eg:  PopupMenuButton(
    //          itemBuilder: (context) => [
    //            PopupMenuItem(
    //              child: Text("Profile"),
    //              value: 1,
    //            ),
    //            PopupMenuItem(
    //              child: Text("Account"),
    //              value: 2,
    //            ),
    //            PopupMenuItem(
    //              child: Text("Settings"),
    //              value: 1,
    //            ),
    //            PopupMenuItem(
    //              child: Text("About GFG"),
    //              value: 1,
    //            ),
    //            PopupMenuItem(
    //              child: Text("Go Premium"),
    //              value: 1,
    //            ),
    //            PopupMenuItem(
    //              child: Text("Logout"),
    //              value: 1,
    //            ),
    //          ],
    //        ),