import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWiedgets extends HookWidget {
  const ShimmerWiedgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: const LinearGradient(colors: [Fbluecolor,Fwhitcolor]),
      child: Container(
        margin: EdgeInsets.only(right: 7.w, bottom: 10.h, top: 10.h),
        decoration: BoxDecoration(
            color: FlighBcolor, borderRadius: BorderRadius.circular(60.r)),
        width: 150.w,
        height: 40.h,
      ),
    );
  }
}
