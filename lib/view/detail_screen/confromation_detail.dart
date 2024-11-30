import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/detail_screen/trackingordet_detail.dart';
import 'package:food/widgets/button_widgets.dart';

class ConfromationDetail extends StatelessWidget {
  const ConfromationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 67.w),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Fbluecolor),
                height: 292.h,
                width: 240.w,
              ),
            ),
            SizedBox(height: 67.h),
            Text(
              "Congratulations!",
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w900,
                  color: Fblackcolor),
            ),
            SizedBox(height: 24.h),
            Text(
              "You successfully maked a payment,\nenjoy our service!",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                  color: Fblackcolor001),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 34.h),
              child: AbuttonWidget(
                  text: "Track Order",
                  callback: () {
                    context.gothrough(const TrackingordetDetail());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
