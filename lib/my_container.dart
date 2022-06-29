import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  //özelleştirilmiş widget
  final Color? renk;
  final Widget? child;

  MyContainer({
    this.renk = Colors.white,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white), //köşeleri yuvarlak yapmak için decor. kullandık
    );
  }
}
