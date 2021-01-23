import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/utils.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({this.image, this.name, this.height, this.width});
  final String image;
  final String name;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: greyColor),
      child: Drawer(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  //Header
                  Container(
                    height: 200,
                    decoration: BoxDecoration(color: blackColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: orangeColor,
                          radius: 77,
                          child: CircleAvatar(
                            backgroundImage: ExactAssetImage(image),
                            radius: 72,
                          ),
                        ),
                        Text(
                          name,
                          style: TextStyle(
                            color: wheatColor,
                            fontSize: 0.45 * height,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Resumo
                  ListTile(
                    dense: true,
                    title: Text(
                      'Resumo',
                      style: TextStyle(
                        color: wheatColor,
                        fontSize: 0.45 * height,
                      ),
                    ),
                    onTap: () {},
                  ),

                  // Projeto
                  ListTile(
                    dense: true,
                    title: Text(
                      'Projetos',
                      style: TextStyle(
                        color: wheatColor,
                        fontSize: 0.45 * height,
                      ),
                    ),
                    onTap: () {},
                  ),

                  // Conquistas
                  ListTile(
                    dense: true,
                    title: Text(
                      'Conquistas',
                      style: TextStyle(
                        color: wheatColor,
                        fontSize: 0.45 * height,
                      ),
                    ),
                    onTap: () {},
                  ),

                  // Currículo
                  ListTile(
                    dense: true,
                    title: Text(
                      'Currículo',
                      style: TextStyle(
                        color: wheatColor,
                        fontSize: 0.45 * height,
                      ),
                    ),
                    onTap: () {},
                  ),

                  // Mais Informações
                  ListTile(
                    dense: true,
                    title: Text(
                      'Mais Informações',
                      style: TextStyle(
                        color: wheatColor,
                        fontSize: 0.45 * height,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),

            // Contatos
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  logoSmall,
                  height: 1.75 * height,
                ),
                Divider(
                  color: wheatColor,
                  thickness: 2,
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // E-mail
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: wheatColor,
                        child: Icon(
                          Entypo.mail,
                          color: blackColor,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(50),
                      onTap: () async {
                        if (await canLaunch(
                            'mailto:ricardo.g.kurashiki@gmail.com')) {
                          await launch('mailto:ricardo.g.kurashiki@gmail.com');
                        } else {
                          throw 'Could not launch ${'mailto:ricardo.g.kurashiki@gmail.com'}';
                        }
                      },
                    ),
                    // GitHub
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: wheatColor,
                        child: Icon(
                          Entypo.github,
                          color: blackColor,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(50),
                      onTap: () async {
                        if (await canLaunch(
                            'https://github.com/RicardoKurashiki')) {
                          await launch('https://github.com/RicardoKurashiki');
                        } else {
                          throw 'Could not launch ${'https://github.com/RicardoKurashiki'}';
                        }
                      },
                    ),
                    // LinkedIn
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: wheatColor,
                        child: Icon(
                          AntDesign.linkedin_square,
                          color: blackColor,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(50),
                      onTap: () async {
                        if (await canLaunch(
                            'https://www.linkedin.com/in/ricardo-godoi-kurashiki-5236921b1/')) {
                          await launch(
                              'https://www.linkedin.com/in/ricardo-godoi-kurashiki-5236921b1/');
                        } else {
                          throw 'Could not launch ${'https://www.linkedin.com/in/ricardo-godoi-kurashiki-5236921b1/'}';
                        }
                      },
                    ),
                  ],
                ),
                Divider(color: Colors.transparent),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Insta
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: wheatColor,
                        child: Icon(
                          FontAwesome.instagram,
                          color: blackColor,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(50),
                      onTap: () async {
                        if (await canLaunch(
                            'https://instagram.com/ricardo.g.kurashiki')) {
                          await launch(
                              'https://instagram.com/ricardo.g.kurashiki');
                        } else {
                          throw 'Could not launch ${'https://instagram.com/ricardo.g.kurashiki'}';
                        }
                      },
                    ),
                    // WhatsApp
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: wheatColor,
                        child: Icon(
                          FontAwesome.whatsapp,
                          color: blackColor,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(50),
                      onTap: () async {
                        if (await canLaunch('https://wa.me/5513982130758')) {
                          await launch('https://wa.me/5513982130758');
                        } else {
                          throw 'Could not launch ${'https://wa.me/5513982130758'}';
                        }
                      },
                    ),
                    // Phone
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: wheatColor,
                        child: Icon(
                          Entypo.phone,
                          color: blackColor,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(50),
                      onTap: () async {
                        if (await canLaunch('tel:+5513982130758')) {
                          await launch('tel:+5513982130758');
                        } else {
                          throw 'Could not launch ${'tel:+5513982130758'}';
                        }
                      },
                    ),
                  ],
                ),
                Divider(color: Colors.transparent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
