import 'package:flutter/material.dart';
import 'package:head_first_design_patterns/constants/app_border_radius.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class AppSnackBar extends SnackBar {
  final String message;
  AppSnackBar(this.message)
      : super(
          shape: const RoundedRectangleBorder(
            borderRadius: AppBorderRadius.all15tl0,
          ),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          content: Text(
            message,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        );
}
