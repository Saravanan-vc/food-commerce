import 'package:commerce/ui/colors_ui.dart';
import 'package:commerce/ui/extension/overall_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectanglechipWidget extends StatelessWidget {
  final String title;
  const RectanglechipWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.w),
      height: 60.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(39)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          children: [
            Container(
              height: 44.h,
              width: 44.w,
              decoration: const BoxDecoration(
                  color: Fbluecolor, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              title,
              style: const TextStyle().fontsize(17).extrabold(),
            )
          ],
        ),
      ),
    );
  }
}

class RectanglechipWidget2 extends StatelessWidget {
  final String title;
  const RectanglechipWidget2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.w),
      width: 90.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(39),
          border: Border.all(width: 2, color: Fblackcolor01)),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Center(
            child: Text(
              title,
              style: const TextStyle().fontsize(17).extrabold(),
            ),
          )),
    );
  }
}

class RectanglechipWidget3 extends StatelessWidget {
  final String title;
  final int width;
  const RectanglechipWidget3(
      {super.key, required this.title, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.w),
      width: width.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(39),
          border: Border.all(width: 2, color: Fblackcolor01)),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Center(
            child: Text(
              title,
              style: const TextStyle().fontsize(16),
            ),
          )),
    );
  }
}
