import 'package:flutter/material.dart';
import 'package:head_first_design_patterns/app_snack_bar.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/strategy_page.dart';
import 'package:head_first_design_patterns/chapters/ch2_observer/observer_page.dart';
import 'package:head_first_design_patterns/home_screen.dart';

class PatternsApp extends StatelessWidget {
  const PatternsApp({Key? key}) : super(key: key);

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

final Map<String, Widget Function(BuildContext)> _routes = {
  HomeScreen.routeName: (context) => HomeScreen(routes: _routes),
  StrategyPage.routeName: (context) => StrategyPage(),
  ObserverPage.routeName: (context) => ObserverPage(),
};
