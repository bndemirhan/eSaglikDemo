import 'package:deneme/widget/follow_button_widget.dart';
import 'package:deneme/widget/random_button_widget.dart';
import 'package:flutter/material.dart';

class Sayfadort extends StatefulWidget {
  @override
  _SayfadortState createState() => _SayfadortState();
}

@override
Widget build(BuildContext context) => MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );

@override
_SayfadortState createState() => _SayfadortState();

class _SayfadortState extends State<Sayfadort> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('SayfaDort'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RandomButtonWidget(),
                FollowButtonWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text('Anasayfaya Dön'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sayfabes');
                    },
                    child: Text('Sayfa Beşe geç'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
