import 'package:flutter/material.dart';
import 'package:week_8/Widgets/Session%20Examples/Counter.dart';
import 'package:week_8/Widgets/Assignment/Assignment 1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileApp()

        // Assignment ---> ProfileApp()
        // Session Counter BasketBall ---> CounterApp()
    );
  }
}
