import 'package:flutter/material.dart';
import 'package:food/ui/colors_ui.dart';

class Scafoldmessager {
  static messagerCall(bool get, BuildContext context, String data) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 1,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(8),
        backgroundColor: get ? Fredcolor : Fwhitcolor,
        content: Text(data),
      ),
    );
  }
}
