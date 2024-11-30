// cart side viewing add to cart card
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class TrackingscreenOrderWidgets extends StatelessWidget {
  final bool remove;
  const TrackingscreenOrderWidgets({super.key, required this.remove});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Fwhitecolor012,
        ),
        height: 125.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
              height: 90.h,
              width: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Fblackcolor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    "Restaruant name odered",
                    style: TextStyle(
                        color: Fblackcolor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Orderd at 06 Sept, 10:00pm",
                    style: TextStyle(color: Fblackcolor, fontSize: 16.sp),
                  ),
                  const Spacer(),
                  Text(
                    r"2X Burger ",
                    style: TextStyle(color: Fblackcolor, fontSize: 16.sp),
                  ),
                  Text(
                    r"2X Sandwitch ",
                    style: TextStyle(color: Fblackcolor, fontSize: 16.sp),
                  ),
                  const Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
