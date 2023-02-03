import 'package:flutter/material.dart';

import 'package:flutter_app_1/screens/counter_screen.dart';
//import 'package:flutter_app_1/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Contador Custom',
      home: CounterScreen(title: 'CounterApp. CounterScreen'),
      //home: HomeScreen(),
    );
  }
}
