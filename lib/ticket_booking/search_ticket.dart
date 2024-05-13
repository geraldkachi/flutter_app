import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/ticket_booking/width/double_text_widget.dart';
import 'package:flutter_app/ticket_booking/width/icon_text_widget.dart';
import 'package:flutter_app/ticket_booking/width/tabs_widget.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:gap/gap.dart';

class SearchTicket extends StatelessWidget {
  const SearchTicket({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: const Color(0xFFEEEDF2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          const Gap(40),
          const Text("What are \nyou looking for?",
              style: TextStyle(
                  fontSize: 35,
                  color: Color(0xFF3b3b3b),
                  fontWeight: FontWeight.bold)),
          const Gap(20),
          const Gap(20),
          const TabsWidget(firstTab: "Airline tickets", secondTab: "Hotels"),
          
          const Gap(25),
          const IconTextWidget(
              text: "Departure", icon: Icons.flight_takeoff_rounded),
          const Gap(15),
          const IconTextWidget(
              text: "Arrival", icon: Icons.flight_land_rounded),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xD91130CE),
            ),
            child: const Center(
              child: Text(
                "Find Tickets",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const Gap(25),
          const DoubleTextWidget(
              bigText: "Upcoming flights", smallText: "View all"),
          const Gap(15),
          Row(
            children: [
              Container(
                height: 425,
                width: size.width * .42,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        offset: const Offset(0, 4),
                        blurRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/sam.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const Text(
                      "20% discount on every booking of this flight. Don't miss out",
                      style: TextStyle(
                          fontSize: 21,
                          color: Color(0xFF3b3b3b),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const Gap(20),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: 210,
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(18)),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(10),
                            Text(
                              'Take the survey about our services and get discount',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -40,
                          top: -40,
                          child: Container(
                            padding: const EdgeInsets.all(28),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 18, color: const Color(0xFF189999)),
                              color: Colors.transparent
                            ),
                          ))
                    ],
                  ),
                  const Gap(10),
                  Container(
                    width: size.width * .44,
                    height: 210,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration( 
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: TextStyle(fontSize: 21,color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                        const Gap(5),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(text: '😍', style: TextStyle(fontSize: 38)),
                            TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                            TextSpan(text: '😘', style: TextStyle(fontSize: 38)),
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
