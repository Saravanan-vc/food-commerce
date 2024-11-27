import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class SingelboxWidgets extends StatelessWidget {
  final bool frontgo;
  final bool backwards;
  const SingelboxWidgets(
      {super.key, required this.frontgo, required this.backwards});
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
          focusNode: FocusNode(),
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
          onChanged: (input) {
            if (input.length > 0 && frontgo) {
              FocusManager.instance.primaryFocus!.nextFocus();
            }
            if (input.length == 0 && backwards) {
              FocusManager.instance.primaryFocus!.previousFocus();
            }
          },
        ),
      ),
    );
  }
}
