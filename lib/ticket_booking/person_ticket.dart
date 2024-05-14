import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/ticket_booking/width/column-layout.dart';
import 'package:flutter_app/ticket_booking/width/layout_builder-widget.dart';
import 'package:flutter_app/utils/app_style.dart';
import 'package:gap/gap.dart';

class PersonTicket extends StatelessWidget {
  const PersonTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 86,
                      width: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/uk.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Styles.headLineStyle1,
                    ),
                    Text(
                      "Book Tickets",
                      style: Styles.headLineStyle4,
                    ),
                    const Gap(10),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xFFFEF4F3)),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799),
                            ),
                            child: const Icon(
                                FluentSystemIcons.ic_fluent_shield_filled,
                                color: Colors.white,
                                size: 15),
                          ),
                          const Gap(3),
                          Text(
                            'Premium status',
                            style: Styles.headLineStyle4.copyWith(
                                color: const Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          const Gap(3),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Text('Edit',
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300)),
                  ],
                )
              ]),
          const Gap(8),
          Divider(color: Colors.grey.shade300),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
                // child: ,
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: const Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_circle_filled,
                        size: 27,
                        color: Styles.primaryColor,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    const Gap(12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'ve got a new award",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "Yuu hava 95 flights this year",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const Gap(25),
          Text('Accumulated miles', style: Styles.headLineStyle2,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ]
            ),
            child: Column(
            children: [
              const Gap(15),
              Text("192802", style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600, color: Styles.textColor)),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text("Miles accured", style: Styles.headLineStyle4),
                    Text("23 May 2024", style: Styles.headLineStyle4),
                ],
              ),
              const Gap(4),
              Divider(color: Colors.grey.shade200,),
              const Gap(8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                AppColumnLayout(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false,),
                AppColumnLayout(firstText: 'Airline CO', secondText: 'Recieved from', alignment: CrossAxisAlignment.end, isColor: false,),
              ],),
               const Gap(12),
               const AppLayoutBuilderWidget(sections: 12, isColor: false,),
               const Gap(12),
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false,),
                  AppColumnLayout(firstText: 'McDoana', secondText: 'Recieved from', alignment: CrossAxisAlignment.end, isColor: false,),
                ],
               ),

              const Gap(12),
               const AppLayoutBuilderWidget(sections: 12, isColor: false,),
               const Gap(12),
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   AppColumnLayout(firstText: '52 342', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: false,),
                  AppColumnLayout(firstText: 'St LordGerald', secondText: 'Recieved from', alignment: CrossAxisAlignment.end, isColor: false,),
                ],
               ),
                const Gap(25),
               InkWell(
                onTap: () => print('you have pressed'),
                 child: Center(
                  child: 
                     Text("How to get more miles", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),
                  )),
               )     
            ],),          
        )
        ],
      ),
    );
  }
}
