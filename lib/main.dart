import 'package:deneme/hakkinda.dart';
import 'package:deneme/home_page.dart';
import 'package:deneme/sayfabes.dart';
import 'package:deneme/sayfabir.dart';
import 'package:deneme/sayfadort.dart';
import 'package:deneme/sayfaiki.dart';
import 'package:deneme/sayfauc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e_saglik',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/hakkinda': (context) => Hakkinda(),
        '/sayfabir': (context) => Sayfabir(),
        '/sayfauc': (context) => Sayfauc(),
        '/sayfaiki': (context) => Sayfaiki(),
        '/sayfadort': (context) => Sayfadort(),
        '/sayfabes': (context) => Sayfabes(),
        '/sayfahome': (context) => HomePage(),
      },
      home: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('beklenilmeyen hata!'));
            } else if (snapshot.hasData) {
              return MyHomePage();
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageSate createState() => _MyHomePageSate();
}

class _MyHomePageSate extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sağlık Asistan'),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/images/kalpp.png'),
            ),
            Text(
              'Adınız ve Soyadınız:',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Adınızı ve Soyadınızı giriniz',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Text(
              'Öğrenci Numaranız:',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Öğrenci numaranızı giriniz',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sayfabir()),
                  );
                },
                child: Text('Giriş'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hakkinda()),
                  );
                },
                child: Text('Hakkında'),
              ),
            ),
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
                  Navigator.pushNamed(context, '/sayfahome');
                },
                child: Text('HOME PAGE'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
