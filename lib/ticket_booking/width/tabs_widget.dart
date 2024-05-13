import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_layout.dart';

class TabsWidget extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TabsWidget(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(58),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //  Container(
            //   margin: EdgeInsets.symmetric(horizontal: 15),
            //    child: Row(
            //      children: [
            //        TabBar(
            //         tabs: [
            //           Tab(icon: Icon(Icons.directions_car)),
            //           Tab(icon: Icon(Icons.directions_transit)),
            //           // Tab(icon: Icon(Icons.directions_bike)),
            //         ],
            //                    ),
            //      ],
            //    ),
            //  ),
            // airline ticket
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.all(8.5),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            // hotel
            Container(
              width: size.width * .44,
              padding: const EdgeInsets.all(8.5),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50)),
                  color: Colors.transparent),
              child: Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
