import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilderWidget({super.key, this.isColor, required this.sections, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
              (index) => SizedBox(
                  height: 1,
                  width: width ,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.white
                              : Colors.grey.shade300)))));
    });

    // LayoutBuilder(
    //     builder: (BuildContext context, BoxConstraints constraints) => Flex(
    //           direction: Axis.horizontal,
    //           mainAxisSize: MainAxisSize.max,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: List.generate(
    //               (constraints.constrainWidth() / sections).floor(),
    //               (index) => SizedBox(
    //                     width: 5,
    //                     height: 1,
    //                     child: DecoratedBox(
    //                       decoration: BoxDecoration(
    //                         color: isColor == null
    //                             ? Colors.white
    //                             : Colors.grey.shade200,
    //                       ),
    //                     ),
    //                   )),
    //         ));
  }
}
