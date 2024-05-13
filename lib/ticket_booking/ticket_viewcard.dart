import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/ticket_booking/width/column-layout.dart';
import 'package:flutter_app/ticket_booking/width/layout_builder-widget.dart';
import 'package:flutter_app/ticket_booking/width/thick_container.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:flutter_app/utils/app_style.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketViewCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketViewCard({super.key, this.isColor, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: (GetPlatform.isAndroid == true ? 167 : 178), 
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // this container it shows the blue side of the ticket card
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Text("${ticket['from']['code']}",
                          style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                      const Spacer(),
                      // Expanded(child: Container(),),
                       const ThickContainer(isColor: true,),
                      Expanded(
                          child: Stack(children: [
                        const SizedBox(
                          height: 24,
                           child: AppLayoutBuilderWidget(sections: 6),

                        ),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null ? Colors.white : Color(0xFFBACCF7)))),
                      ])),
                       ThickContainer(isColor: true,),
                      const Spacer(),
                      Text("${ticket['to']['code']}",
                          style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                    ],
                  ),
                  const Gap(2),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text('${ticket['from']['name']}',
                                style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4)),
                        Text("${ticket['flying_time']}",
                            style:isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4),
                        SizedBox(
                            width: 100,
                            child: Text('${ticket['to']['name']}',
                                textAlign: TextAlign.end,
                                style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4)),
                      ]
                      )
                ],
              ),
            ),
            // this container it shows the orange and the dotted list side of the ticket card
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                   SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? Colors.grey.shade200: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          )),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AppLayoutBuilderWidget(sections: 15, isColor: false)
                      )),
                  // Expanded(
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(12.0),
                  //       child: LayoutBuilder(
                  //           builder:
                  //               (BuildContext context, BoxConstraints constraints) =>
                  //                   Flex(
                  //                     direction: Axis.horizontal,
                  //                     mainAxisSize: MainAxisSize.max,
                  //                     mainAxisAlignment:
                  //                         MainAxisAlignment.spaceBetween,
                  //                     children: List.generate((constraints.constrainWidth()/15).floor(),(index) => SizedBox(
                  //                               width: 5,
                  //                               height: 1,
                  //                               child: DecoratedBox(
                  //                                 decoration: BoxDecoration(
                  //                                     color: isColor == null ? Colors.white : Colors.grey.shade200,),
                  //                               ),
                  //                             )),
                  //                   )),
                  //     )),
                   SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null ? Colors.grey.shade200: Colors.white,
                          borderRadius: const BorderRadius.only(
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
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0)),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child:  Column(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppColumnLayout(firstText: ticket['date'], secondText: 'Date', alignment: CrossAxisAlignment.start, isColor: false),
                    AppColumnLayout(firstText: ticket['departure_time'], secondText: 'Departure time', alignment: CrossAxisAlignment.center, isColor: false),
                    AppColumnLayout(firstText: ticket['number'].toString(), secondText: 'Number', alignment: CrossAxisAlignment.end, isColor: false),
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text('${ticket['date']}', style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3),
                    //     const  Gap(5),
                    //      Text("Date", style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4)
                    //   ],
                    // ),

                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Text('${ticket['departure_time']}', style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3,),
                    //     const Gap(5),
                    //      Text("Departure time", style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4)
                    //   ],
                    // ),

                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.end,
                    //   children: [
                    //     Text(ticket['number'].toString(), style: isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3,),
                    //     const Gap(5),
                    //      Text("Number", style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4)
                    //   ],
                    // )
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
