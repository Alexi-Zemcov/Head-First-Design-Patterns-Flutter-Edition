import 'package:flutter/material.dart';

class ObserverPage extends StatefulWidget {
  static const String routeName = 'Observer Pattern';

  const ObserverPage({Key? key}) : super(key: key);

  @override
  _ObserverPageState createState() => _ObserverPageState();
}

class _ObserverPageState extends State<ObserverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ch.2: Observer'),
      ),
    );
  }
}
