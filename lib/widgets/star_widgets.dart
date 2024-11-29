import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class StarWidgets {
  static Container starcontainer() {
    return Container(
      height: 50.h,
      width: 50.w,
      margin: EdgeInsets.only(right: 6.w),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Fblackcolor01)),
      child: const Center(
          child: Icon(
        Icons.star_rate,
        color: Forangcolor,
      )),
    );
  }
}
