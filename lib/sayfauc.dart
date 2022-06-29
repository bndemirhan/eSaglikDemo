import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_cinsiyet.dart';
import 'my_container.dart';

class Sayfauc extends StatefulWidget {
  @override
  _SayfaucState createState() => _SayfaucState();
}

class _SayfaucState extends State<Sayfauc> {
  String? seciliCinsiyet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SayfaUc'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            seciliCinsiyet = 'KADIN';
                          });
                        },
                        child: MyContainer(
                          renk: seciliCinsiyet == 'KADIN'
                              ? Colors.lightBlue[100]
                              : Colors.white,
                          child: IconCinsiyet(
                            cinsiyet: 'KADIN',
                            icon: FontAwesomeIcons.venus,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            seciliCinsiyet = 'ERKEK';
                          });
                        },
                        child: MyContainer(
                          renk: seciliCinsiyet == 'ERKEK'
                              ? Colors.lightBlue[100]
                              : Colors.white,
                          child: IconCinsiyet(
                            icon: FontAwesomeIcons.mars,
                            cinsiyet: 'ERKEK',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text('Sayfa Üçdesiniz'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sayfadort');
                  },
                  child: Text('Animasyona Geç'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Anasayfaya Don'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
