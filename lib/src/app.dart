import 'package:flutter/material.dart';
import 'package:my_portfolio/src/pages/Home/home.dart';
import 'package:my_portfolio/src/styles.dart';
import 'utils/utils.dart';

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: longAppName,
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: HomePage(),
    );
  }
}
