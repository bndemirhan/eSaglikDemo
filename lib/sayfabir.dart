// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'my_container.dart';

class Sayfabir extends StatefulWidget {
  @override
  _SayfabirState createState() => _SayfabirState();
}

class _SayfabirState extends State<Sayfabir> {
  double icilenSigara = 0.0;
  double sporGunu = 3;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SayfaBir'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: MyContainer(
                            child: Row(children: <Widget>[
                          RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                'Boy',
                                style: kMetinStili,
                              )),
                          RotatedBox(
                              quarterTurns: -1,
                              child: Text('170', style: kSayiStili)),
                          SizedBox(width: 30),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              OutlineButton(
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                                child: Icon(FontAwesomeIcons.plus, size: 30),
                                onPressed: () {
                                  setState(() {
                                    boy++;
                                    /* var label;
                                label == 'BOY' ? boy++ : kilo++;*/
                                  });

                                  print('artı butonuna basıldı');
                                },
                              ),
                              OutlineButton(
                                borderSide:
                                    BorderSide(color: Colors.deepPurple),
                                child: Icon(FontAwesomeIcons.minus, size: 30),
                                onPressed: () {
                                  setState(() {
                                    boy--;
                                    /* var label;
                                label == 'BOY' ? boy-- : kilo--;*/
                                  });

                                  print('eksi butonuna basıldı');
                                },
                              ),
                            ],
                          )
                        ])),
                      )
                    ]),
              ),
              Text('SAYFA BİRDESİNİZ. '),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sayfaiki');
                  },
                  child: Text('Sayfa İkiye Geç'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text('Anasayfaya Dön'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
