import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:gap/gap.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({super.key, required this.hotel}); 

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 359,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: const Color(0xFF687DAF),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            color: const Color(0xFF687DAF),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/${hotel['image']}')
              )
          ),
        ),
        const Gap(10),
        Text("${hotel['place']}", style: TextStyle(fontSize: 21,color: Color(0xFFD2BDB6),fontWeight: FontWeight.bold)),
        Text("${hotel['destination']}", style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold)),
        const Gap(8), 
        Text('\$${hotel['price']}/night', style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: FontWeight.bold)),
      ],),
    );
  }
}