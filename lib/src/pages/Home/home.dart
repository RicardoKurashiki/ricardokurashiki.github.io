import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../../components/components.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      final h = c.constrainHeight() / 16;
      final w = c.constrainWidth() / 9;
      return Scaffold(
        backgroundColor: wheatColor,
        body: Row(
          children: [
            CustomDrawer(
              image: myFace,
              name: 'Ricardo Godoi Kurashiki',
              height: h,
              width: w,
            ),
            Expanded(
                child: Stack(
              children: [
                //Introducao
                Positioned(
                  top: 0.15 * h,
                  left: 0.15 * w,
                  bottom: 9 * h,
                  right: 0.15 * w,
                  child: CustomContainer(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "Olá, meu nome é Ricardo Godoi Kurashiki, tudo bem?",
                          style: TextStyle(
                            color: wheatColor,
                            fontSize: 0.85 * h,
                          ),
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              textIntro,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: redColor,
                                fontSize: 0.85 * h,
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
                  top: 7.5 * h,
                  left: 0.15 * w,
                  bottom: 0.15 * w,
                  right: 0.15 * w,
                  child: CustomContainer(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          'Minhas habilidades',
                          style: TextStyle(
                            color: redColor,
                            fontSize: h,
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
    });
  }
}
