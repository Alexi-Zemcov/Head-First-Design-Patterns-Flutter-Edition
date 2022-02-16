import 'package:flutter/material.dart';
import 'package:head_first_design_patterns/app_snack_bar.dart';

void showSnackBar(SnackBar snackBar, {bool hideCurrent = false}) {
  final currentState = rootScaffoldMessengerKey.currentState;
  if (hideCurrent) {
    currentState?.hideCurrentSnackBar();
  }
  currentState?.showSnackBar(snackBar);
}
