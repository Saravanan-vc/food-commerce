import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';

class CalldriverDetail extends StatelessWidget {
  const CalldriverDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: context.fullHeight,
            color: Fbluecolor,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: context.fullHeight * 0.45,
              decoration: BoxDecoration(
                color: Fwhitcolor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 12.h),
                    height: 150.h,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Fbluecolor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: Text(
                      "Robert Fox",
                      style: const TextStyle().fontsize(20).extrabold(),
                    ),
                  ),
                  Text(
                    "Connecting.......",
                    style: const TextStyle(color: Fbluecolor)
                        .fontsize(20)
                        .extrabold(),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60.h,
                          width: 60.h,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w), // Add spacing
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Fbluecolor, // Replace Fbluecolor
                          ),
                          child: Center(
                            child: Icon(
                              Icons.mic_off_sharp,
                              size: 30.sp,
                              color: Fblackcolor,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.gouthrough();
                          },
                          child: Container(
                            height: 80.h,
                            width: 80.h,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.w), // Add spacing
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Fredcolor, // Replace Forangcolor
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 20, color: FlighBcolor),
                                  BoxShadow(
                                      spreadRadius: 10,
                                      blurRadius: 2,
                                      color: Flightornagelir),
                                ]),
                            child: Center(
                              child: Icon(
                                Icons.call,
                                size: 40.sp,
                                color: Fwhitcolor,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60.h,
                          width: 60.h,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w), // Add spacing
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Fbluecolor, // Replace Fbluecolor
                          ),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.speaker_2_fill,
                              size: 30.sp,
                              color: Fblackcolor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
