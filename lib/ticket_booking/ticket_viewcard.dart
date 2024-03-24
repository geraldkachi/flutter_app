import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/ticket_booking/width/thick_container.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:flutter_app/utils/app_style.dart';
import 'package:gap/gap.dart';

class TicketViewCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketViewCard({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          children: <Widget>[
            // this container it shows the blue side of the ticket card
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Text("${ticket['from']['code']}",
                          style: const TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      const Spacer(),
                      // Expanded(child: Container(),),
                      const ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraints) {
                            // print('this is ${constraints.constrainWidth()}');
                            return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => const SizedBox(
                                        height: 1,
                                        width: 3,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white)))));
                          }),
                        ),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white))),
                      ])),
                      const ThickContainer(),
                      const Spacer(),
                      Text("${ticket['to']['code']}",
                          style: const TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Gap(2),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text('${ticket['from']['name']}',
                                style: const TextStyle(color: Colors.white))),
                        Text("${ticket['flying_time']}",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                            width: 100,
                            child: Text('${ticket['to']['name']}',
                                textAlign: TextAlign.end,
                                style: const TextStyle(color: Colors.white))),
                      ]
                      )
                ],
              ),
            ),
            // this container it shows the orange and the dotted list side of the ticket card
            Container(
              color: const Color(0xFFF37B67),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                            builder:
                                (BuildContext context, BoxConstraints constraints) =>
                                    Flex(
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate((constraints.constrainWidth()/15).floor(),(index) => const SizedBox(
                                                width: 5,
                                                height: 1,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white),
                                                ),
                                              )),
                                    )),
                      )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          //  this container the orange part
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF37B67),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child:  Column(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${ticket['date']}', style: const TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),
                        const  Gap(5),
                        const Text("Date", style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500))
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('${ticket['departure_time']}', style: const TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),
                        const Gap(5),
                        const Text("Departure time", style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500))
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(ticket['number'].toString(), style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),),
                        const Gap(5),
                        const Text("Number", style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w500))
                      ],
                    )
                  ],
                )
                ]
              ),
          )
          ],
        ),
      ),
    );
  }
}
