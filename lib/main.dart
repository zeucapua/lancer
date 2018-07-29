import 'package:flutter/material.dart';
import 'pages/LoginPage.dart';

void main() => runApp( LancerApp() );

class LancerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Lancer',
      theme:  ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.pinkAccent,
      ),
      home: LoginPage(),
    );
  }
}