import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ricardo_kurashiki_portfolio/app/modules/home/models/skill_model.dart';
import '../../../pages/base_page.dart';
import '../../../utils.dart';
import '../stores/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  Widget _buildPage() {
    const introductionText =
        "Nasci em 2001 e atualmente sou programador front-end de Flutter, onde desenvolvo aplicativos multiplataforma e sites \u2022 Estudo Engenharia de Programação desde 2019 na Pontifícia Universidade Católica do Paraná";

    List<Widget> backgroundDecoration = [
      Positioned(
        bottom: -50,
        left: -50,
        child: CircleAvatar(
          radius: 98,
          backgroundColor: PortfolioColors.blue[50],
        ),
      ),
      Positioned(
        bottom: 160,
        left: 10,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: PortfolioColors.blue[50],
        ),
      ),
      Positioned(
        bottom: 10,
        left: 160,
        child: CircleAvatar(
          radius: 35,
          backgroundColor: PortfolioColors.blue[50],
        ),
      ),
    ];

    List<Widget> buildSkillBubbles() {
      List<SkillModel> projectsIcons = [
        SkillModel(title: "Dart", icon: SkillIcons.dart, percentage: 0.6),
        SkillModel(title: "Flutter", icon: SkillIcons.flutter, percentage: 0.75),
        SkillModel(title: "Git", icon: SkillIcons.git, percentage: 0.45),
        SkillModel(title: "GitHub", icon: SkillIcons.github, percentage: 0.8),
        SkillModel(title: "Visual Studio Code", icon: SkillIcons.vscode, percentage: 0.94),
      ];
      return List.generate(
        projectsIcons.length,
        (index) {
          double size = 100 + (100 * projectsIcons[index].percentage);
          return Tooltip(
            message: projectsIcons[index].title,
            textStyle: PortfolioTexts.theme().sizeDefault.withColor(PortfolioColors.white),
            verticalOffset: size / 2.5,
            child: Container(
              height: size,
              width: size,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100000),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 10),
                    blurRadius: 8,
                    color: Colors.black.withOpacity(0.08),
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    PortfolioColors.white.withOpacity(0.8),
                    PortfolioColors.blue[50]!.withOpacity(0.8),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100000),
                  child: Image.asset(projectsIcons[index].icon)),
            ),
          );
        },
      );
    }

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.antiAlias,
      children: <Widget>[
        ...backgroundDecoration,
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        "Olá, meu nome é",
                        style: PortfolioTexts.theme(fontSize: 56).weightMedium,
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        "RICARDO",
                        style: PortfolioTexts.theme(fontSize: 98).weightBold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(introductionText, style: PortfolioTexts.theme().sizeDefault),
                  ],
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 32,
                    spacing: 32,
                    children: buildSkillBubbles(),
                  )),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(child: _buildPage());
  }
}
