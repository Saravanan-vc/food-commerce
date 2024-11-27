import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';

class SugrestaruntsWidgets extends StatelessWidget {
  const SugrestaruntsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 4.h, top: 4.h),
          height: 60.w,
          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: 60.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: Fbluecolor),
              ),
              SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Restarunats Names",
                    style: const TextStyle(
                            color: Fblackcolor, fontWeight: FontWeight.w500)
                        .fontsize(20),
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.star,
                        color: Forangcolor,
                        size: 16.sp,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "4.7",
                        style: const TextStyle(color: Fblackcolor).fontsize(16),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const Divider(
          color: FlighBcolor,
          thickness: 2,
        )
      ],
    );
  }
}
