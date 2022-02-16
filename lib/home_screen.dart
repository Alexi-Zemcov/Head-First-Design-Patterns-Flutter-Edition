import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';
  final List<String> otherScreenRoutes = [];

  HomeScreen({
    Key? key,
    required Map<String, Widget Function(BuildContext)> routes,
  }) : super(key: key) {
    otherScreenRoutes.addAll(
      routes.keys.where((e) => e != routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: otherScreenRoutes.length,
        itemBuilder: (context, i) => Card(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, otherScreenRoutes[i]),
            child: Center(child: Text(otherScreenRoutes[i])),
          ),
        ),
      ),
    );
  }
}
