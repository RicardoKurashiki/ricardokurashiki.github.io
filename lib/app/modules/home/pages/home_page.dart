import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import '../stores/home_store.dart';
import '../../../pages/base_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return BasePage(child: Container());
  }
}
