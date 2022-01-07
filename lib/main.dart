import 'package:ch1_duck_behavior/chapters/ch1_strategy/sim_u_duck_page.dart';
import 'package:ch1_duck_behavior/chapters/ch2_observer/observer_page.dart';
import 'package:ch1_duck_behavior/home_screen.dart';
import 'package:ch1_duck_behavior/snack_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final Map<String, Widget Function(BuildContext)> _routes = {
  HomeScreen.routeName: (context) => HomeScreen(routes: _routes),
  StrategyPage.routeName: (context) => StrategyPage(),
  ObserverPage.routeName: (context) => ObserverPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      title: 'Head First Patterns',
      theme: ThemeData.dark(),
      routes: _routes,
      home: HomeScreen(routes: _routes),
    );
  }
}
