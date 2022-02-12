import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ricardo_kurashiki_portfolio/app/utils.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  final buttonList = [
    DrawerItemModel(title: "Home", icon: Icons.home_outlined, route: PortfolioRoutes.home()),
    DrawerItemModel(
        title: "Projetos", icon: Icons.card_travel_outlined, route: PortfolioRoutes.projects()),
    DrawerItemModel(
        title: "Mais Informações", icon: Icons.info_outlined, route: PortfolioRoutes.info()),
  ];

  Widget _buildButton(DrawerItemModel item, [bool isSelected = false]) {
    return InkWell(
      onTap: () => Modular.to.navigate(item.route),
      child: Container(
        height: 30,
        width: 30,
        child: Center(child: Icon(item.icon, size: 24, color: PortfolioColors.white)),
        decoration: BoxDecoration(
            color: isSelected ? const Color(0xFFC4C4C4) : Colors.transparent,
            border: Border.all(color: PortfolioColors.white, width: 1),
            borderRadius: BorderRadius.circular(8),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                      color: Colors.black.withOpacity(0.25),
                    )
                  ]
                : []),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(16)),
        color: PortfolioColors.blue[500],
      ),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        itemBuilder: (context, index) =>
            _buildButton(buttonList[index], Modular.to.path == buttonList[index].route),
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemCount: buttonList.length,
      ),
    );
  }
}

class DrawerItemModel {
  String title;
  IconData icon;
  String route;

  DrawerItemModel({required this.title, required this.icon, required this.route});
}
