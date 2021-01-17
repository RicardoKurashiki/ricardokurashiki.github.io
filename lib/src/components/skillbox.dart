import 'package:flutter/material.dart';
import 'package:my_portfolio/src/utils/constants.dart';

class SkillBoxes extends StatelessWidget {
  final IconData icon;
  final String hint;

  const SkillBoxes({Key key, this.icon, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(icon),
    );
  }
}
