import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../theming/app_colors.dart';

extension ToastString on String {
  void showToast({ToastGravity gravity = ToastGravity.BOTTOM,
    Color backgroundColor = Colors.grey,
    Color textColor = Colors.white}) {
    Fluttertoast.showToast(
      msg: this,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
  }
}