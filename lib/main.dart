import 'package:flutter/material.dart';
import 'package:language_learning/screens/home_screen.dart';



void main() {
  runApp(const TokApp());
}

class TokApp extends StatelessWidget {
  const TokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
     home:HomeScreen(),
    );
  }
}
