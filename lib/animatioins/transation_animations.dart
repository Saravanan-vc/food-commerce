// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/images_ui.dart';

class TransationAnimations {
  static TransationAnimations1(context) {
    return TweenAnimationBuilder(
      tween: Tween(
          begin: MediaQuery.sizeOf(context).width * 0.7,
          end: MediaQuery.sizeOf(context).width * 0.3),
      duration: const Duration(seconds: 1),
      curve: Curves.linear,
      builder: (context, value, child) {
        return Positioned(
          bottom: -MediaQuery.sizeOf(context).height * 0.14,
          right: -value,
          child: Image.asset(
            splashImage1,
            height: 292.h,
            width: 295.w,
          ),
        );
      },
    );
  }
}
