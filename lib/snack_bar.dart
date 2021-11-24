import 'package:ch1_duck_behavior/constants/app_border_radius.dart';
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void showSnackBar(String message) {
  final currentState = rootScaffoldMessengerKey.currentState!;
  currentState.hideCurrentSnackBar();
  currentState.showSnackBar(
    SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: AppBorderRadius.all15tl0,
      ),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.symmetric(horizontal: 20),
      content: Text(
        message,
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
