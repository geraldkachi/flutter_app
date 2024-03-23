// import 'package:flutter/cupertino.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_style.dart';
// import 'package:flutter/widgets.dart';

class HomeTicket extends StatelessWidget {
  const HomeTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning", style: TextStyle(fontSize: 17,color: Colors.grey.shade500,fontWeight: FontWeight.w500)),
                          // const SizedBox(height: 5),
                          Gap(5),
                          Text("Book Tickets", style: Styles.headLineStyle1),
                        ],
                      ),
                      // Text("second child"),

                      Column(children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage('assets/james.jpg'))),
                        )
                      ])
                    ],
                  ),

                   Row(children: [
                    const Icon(FluentSystemIcons .ic_fluent_search_regular, color: Color(0xFFBFC205)),
                    Text("Search", style: TextStyle(fontSize: 14,color: Colors.grey.shade500, fontWeight: FontWeight.w500))
                  ],)
                ],
              )),
        ],
      ),
    );
  }
}
