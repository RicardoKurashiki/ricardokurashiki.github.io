import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../../components/components.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wheatColor,
      body: Row(
        children: [
          CustomDrawer(
            image: myFace,
            name: 'Ricardo Godoi Kurashiki',
          ),
          Expanded(
              child: Stack(
            children: [
              //Introducao
              Positioned(
                top: 20,
                left: 20,
                bottom: 350,
                right: 20,
                child: CustomContainer(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "Olá, meu nome é Ricardo Godoi Kurashiki, tudo bem?",
                        style: TextStyle(
                          color: wheatColor,
                          fontSize: 40,
                        ),
                      ),
                      Divider(
                        color: Colors.transparent,
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            textIntro,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: redColor,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Habilidades
              Positioned(
                top: 325,
                left: 20,
                bottom: 20,
                right: 20,
                child: CustomContainer(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        'Minhas habilidades',
                        style: TextStyle(
                          color: redColor,
                          fontSize: 40,
                        ),
                      ),
                      Divider(
                        color: redColor,
                        thickness: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SkillBoxes(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
