import 'package:flutter/material.dart';

class AppDelegates {
  static const SliverGridDelegateWithMaxCrossAxisExtent gridDelegate =
      SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 250,
    mainAxisSpacing: 15,
    crossAxisSpacing: 15,
  );
}
