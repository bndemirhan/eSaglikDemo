import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    CollectionReference sporRef = _firestore.collection('spor');
    var sp = _firestore.collection('spor').doc('20062022');

    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(title: Text('CRUD')),
      body: Center(
        child: Container(
          child: Text(
            // '${sporRef.get()}',
            '${sp.path}',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
