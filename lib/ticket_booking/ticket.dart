// ignore_for_file: prefer_const_constructors

import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_style.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:flutter_app/utils/app_info_list.dart';
import 'package:flutter_app/ticket_booking/ticket_viewcard.dart';
import 'package:flutter_app/ticket_booking/width/tabs_widget.dart';
import 'package:flutter_app/ticket_booking/width/column-layout.dart';
import 'package:flutter_app/ticket_booking/width/layout_builder-widget.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
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
            padding:const EdgeInsets.only(left: 15),
            child: TicketViewCard(ticket: ticketList[0],isColor: true,),
          ), 
          const SizedBox(height: 1),
          Container(
            color: Colors.white,
            padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 20), 
            margin:const EdgeInsets.symmetric(horizontal: 15), 
            child:  Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  AppColumnLayout(firstText: 'Flutter DB',  secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: false,),
                  AppColumnLayout(firstText: '5221 364869',  secondText: 'passport', alignment: CrossAxisAlignment.end, isColor: false,),
                ],
              ),
                const Gap(20),
                const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5),
                const Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  AppColumnLayout(firstText: '363738 28274478',  secondText: 'Number of E-Ticket', alignment: CrossAxisAlignment.start, isColor: false,),
                  AppColumnLayout(firstText: 'B2SG28 ',  secondText: 'Booking code', alignment: CrossAxisAlignment.end, isColor: false,),
                ],
              ),
                const Gap(20),
                const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                      Row( 
                        children: [
                          Image.asset('assets/uk.png', scale: 11,),
                        Text('*** 2462', style: Styles.headLineStyle3,)
                      ],),
                    const Gap(5),
                    Text('Payment Method', style: Styles.headLineStyle4,)
                      ],
                    ),
                    AppColumnLayout(firstText: '\$249.99',  secondText: 'Passenger', alignment: CrossAxisAlignment.end, isColor: false,),
                  ],
                ),
                ]
            ),
            )
        ],)
      ],),
    );
  }
}