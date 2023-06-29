import 'dart:async';
import 'login.dart';
import 'home.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      title: 'My Telkomsel',
      home: startScreen(),
      routes: {
        'login': (context) => loginScreen(),
        'home': (context) => home(),
      },
    );
  }
}

class startScreen extends StatefulWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  State<startScreen> createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => loginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#EC2028'),
      child: Image.asset('assets/images/logo.png'),
    );
  }
}

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return login();
  }
}
