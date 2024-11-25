import 'package:commerce/ui/colors_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputfieldWidgets extends StatelessWidget {
  final String hinttext;
  const InputfieldWidgets({super.key, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      margin: EdgeInsets.only(top: 8.h, bottom: 24.h),
      decoration: BoxDecoration(
          color: FlighBcolor, borderRadius: BorderRadius.circular(10.r)),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 19.w, vertical: 24.h),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            hintText: hinttext,
            hintStyle: TextStyle(fontSize: 18.sp),
            fillColor: Fblackcolor001),
      ),
    );
  }
}
