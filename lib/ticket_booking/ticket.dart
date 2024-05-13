import 'package:flutter/material.dart';
import 'package:flutter_app/ticket_booking/ticket_viewcard.dart';
import 'package:flutter_app/ticket_booking/width/tabs_widget.dart';
import 'package:flutter_app/utils/app_info_list.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:gap/gap.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
          const Gap(40),
          const Text("Tickets", style: TextStyle(fontSize: 26,color: Color(0xFF3b3b3b),fontWeight: FontWeight.bold),),
          const Gap(20),
          const TabsWidget(firstTab: "Upcoming", secondTab: "Previous"),
          const Gap(20),
          Container(
            padding:const EdgeInsets.only(left: 20),
            child: TicketViewCard(ticket: ticketList[0],isColor: true,),
          )
        ],)
      ],),
    );
  }
}