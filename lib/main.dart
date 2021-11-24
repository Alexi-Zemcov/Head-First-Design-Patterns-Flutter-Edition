import 'package:ch1_duck_behavior/chapters/ch1_strategy/sim_u_duck_page.dart';
import 'package:ch1_duck_behavior/snack_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      title: 'Head First Patterns',
      theme: ThemeData.dark(),
      home: SimUDuckPage(title: 'Ch.1: SimUDuck (Стратегия)'),
    );
  }
}
