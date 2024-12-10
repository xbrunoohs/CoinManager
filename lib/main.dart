import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coin Manager',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginScreen(), // tela de login
    );
  }
}
