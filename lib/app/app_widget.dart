import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ricardo_kurashiki_portfolio/app/utils.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ricardo G. Kurashiki - Portfolio',
      debugShowCheckedModeBanner: false,
      theme: customThemeData(context),
    ).modular();
  }
}
