import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconTextWidget extends StatelessWidget {
    final IconData icon;
    final String text;
  const IconTextWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Row(
              children: [
                Icon(icon, color: const Color(0xFFBFC2DF)),
                const Gap(26),
                Text(text, style: const TextStyle(fontSize: 16,color: Color(0xFF3b3b3b),fontWeight: FontWeight.w500))
              ],
            ),
          );
  }
}