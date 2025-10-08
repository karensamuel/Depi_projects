import 'package:flutter/material.dart';
import 'package:fruitsshop/vegtablepage.dart';

import 'animates_heart.dart';
import 'categoriepage.dart';
import 'fruitapp.dart';
import 'loginpage.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(), // start page
    );
  }
}
