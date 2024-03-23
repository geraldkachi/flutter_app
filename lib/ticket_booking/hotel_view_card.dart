import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_layout.dart';
import 'package:gap/gap.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

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
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/indonesia.png')
              )
          ),
        ),
        const Gap(10),
        const Text("Open Space", style: TextStyle(fontSize: 21,color: Color(0xFFD2BDB6),fontWeight: FontWeight.bold)),
        const Text("LONDON", style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold)),
      ],),
    );
  }
}