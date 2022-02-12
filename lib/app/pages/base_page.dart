import 'package:flutter/material.dart';
import 'package:ricardo_kurashiki_portfolio/app/components/drawer_widget.dart';

import '../utils.dart';

class BasePage extends StatefulWidget {
  final Widget child;
  const BasePage({Key? key, required this.child}) : super(key: key);
  @override
  BasePageState createState() => BasePageState();
}

class BasePageState extends State<BasePage> {
  Widget _buildWebPage(Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              DrawerWidget(),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 95,
          decoration: BoxDecoration(
            color: PortfolioColors.blue[500],
            border: Border(top: BorderSide(color: PortfolioColors.blue[900]!, width: 4)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(PortfolioIcons.smallLogo, height: 24, width: 24),
              const SizedBox(width: 16),
              Flexible(
                child: Text(
                  "Copyright - Kuratech 2021",
                  style: PortfolioTexts.theme(color: PortfolioColors.white).sizeDefault,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildWebPage(widget.child));
  }
}
