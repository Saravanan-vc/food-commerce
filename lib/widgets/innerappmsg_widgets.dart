import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class InnerappmsgWidgets {
  static scaffoldMessage(context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: const EdgeInsets.all(0),
        content: Container(
            color: Fwhitcolor,
            child: const Text(
              "The mail or not good",
              style: TextStyle(color: Forangcolor),
            )),
        margin: EdgeInsets.only(bottom: 0.90.sh, left: 10.w, right: 10.w),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
