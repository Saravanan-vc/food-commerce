import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class SingelboxWidgets extends StatelessWidget {
  const SingelboxWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      width: 62.w,
      margin: EdgeInsets.only(top: 8.h, bottom: 24.h),
      decoration: BoxDecoration(
          color: FlighBcolor, borderRadius: BorderRadius.circular(10.r)),
      child: Center(
        child: TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              hintText: "0",
              hintStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Fblackcolor002),
              fillColor: Fblackcolor001),
        ),
      ),
    );
  }
}
