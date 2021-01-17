import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;

  CustomContainer({this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          color: orangeColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: redColor,
              offset: Offset(10, 10),
            ),
          ]),
      child: child,
    );
  }
}
