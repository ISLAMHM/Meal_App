import 'package:flutter/material.dart';

class Helpers {
  static void showSnackBar(
      {required BuildContext context,
        required String message,
        bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: error ? Colors.red : Colors.green,
      ),
    );
  }
}