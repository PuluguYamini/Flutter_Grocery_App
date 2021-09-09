import 'package:flutter/material.dart';
import './methods/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Application',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
    ));
  }
}
