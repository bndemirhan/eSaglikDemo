import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'my_container.dart';

class Sayfaiki extends StatefulWidget {
  @override
  _SayfaikiState createState() => _SayfaikiState();
}

class _SayfaikiState extends State<Sayfaiki> {
  double icilenSigara = 0.0;
  double sporGunu = 3;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sayfaİki'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Row(children: <Widget>[
                  Expanded(
                    child: MyContainer(
                        child: Row(children: <Widget>[
                      RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'KİLO',
                            style: kMetinStili,
                          )),
                      RotatedBox(
                          quarterTurns: -1,
                          child: Text('60', style: kSayiStili)),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          OutlineButton(
                            borderSide: BorderSide(color: Colors.deepPurple),
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
                            borderSide: BorderSide(color: Colors.deepPurple),
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
              Text('Sayfa ikidesiniz '),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sayfauc');
                  },
                  child: Text('Sayfa üçe geç'),
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
