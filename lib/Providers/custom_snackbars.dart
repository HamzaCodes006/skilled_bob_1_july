import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSnackBars extends ChangeNotifier {
  final Color? color;
  final String title;
  final String message;
  final type;

  CustomSnackBars(
      {required this.title,
      required this.message,
      required this.type,
      this.color});
}
