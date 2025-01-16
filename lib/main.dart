import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyBudgetApp());
}

class MyBudgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyBudget',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: LoginScreen(),
    );
  }
}
