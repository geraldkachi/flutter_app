import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ticket_booking/hotel_view_card.dart';
import 'package:flutter_app/ticket_booking/ticket_viewcard.dart';
import 'package:flutter_app/utils/app_info_list.dart';
import 'package:flutter_app/utils/app_style.dart';
import 'package:gap/gap.dart';

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
                          const Gap(5),
                          Text("Book Tickets", style: Styles.headLineStyle1),
                        ],
                      ),
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
                  const SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: const Color(0xFFF4F6FD), 
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Row(children: [
                    const Icon(FluentSystemIcons .ic_fluent_search_regular, color: Color(0xFFBFC205)),
                    Text("Search", style: TextStyle(fontSize: 14,color: Colors.grey.shade500, fontWeight: FontWeight.w500))
                  ],), 
                  ),
                  const Gap(20),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Text("Upcoming Flights", style: TextStyle(fontSize: 21,color: Color(0xFF3b3b3b),fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {
                        print("Make shit happen");
                      },
                      child: const Text("View all", style: TextStyle(fontSize: 21,color: Color(0xFF3b3b3b),fontWeight: FontWeight.bold)),
                    ),
                  ],)
                ],
              )
              ),   
                const Gap(15),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: ticketList.map((e) => TicketViewCard(ticket: e)).toList(),)
         ,),
        const Gap(15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Hotels", style: TextStyle(fontSize: 21,color: Color(0xFF3b3b3b),fontWeight: FontWeight.bold)),
              InkWell(
                onTap: (){},
                child: const Text("View all", style: TextStyle(fontSize: 16,color: Color(0xFF3b3b3b),fontWeight: FontWeight.w500)),
              )
                      
                    ],),
        ), 
        const Gap(15),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child:  Row(children: hotelList.map((e) => HotelCard(hotel: e)).toList()
           ),
          ),
          const Gap(15),
        ],
      ),
    );
  }
}
