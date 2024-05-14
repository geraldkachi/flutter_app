import 'package:flutter/material.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleTextWidget({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bigText,
              style: const TextStyle( fontSize: 21, color: Color(0xFF3b3b3b), fontWeight: FontWeight.bold)),
          InkWell(
            onTap: () {},
            child: Text(smallText, style: const TextStyle(fontSize: 16, color: Color(0xFF3b3b3b), fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }
}
