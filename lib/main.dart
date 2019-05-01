import 'package:flutter/material.dart';
import 'crack_home.dart';

void main() => runApp(CrackApp());

class CrackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '黄昏夹缝',
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      home: CrackHome(),
    );
  }
}
