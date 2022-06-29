import 'package:deneme/constants.dart';
import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class IconCinsiyet extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;

  IconCinsiyet(
      {this.cinsiyet =
          'cinsiyet giriniz', //bir şey girilmezse varsyılan olarak gözükecekler
      this.icon = FontAwesomeIcons.borderNone});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 50, color: Colors.black54),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet,
          style: kMetinStili,
        )
      ],
    );
  }
}
