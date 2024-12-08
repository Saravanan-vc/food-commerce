import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';

class PersonalinfoDetail extends StatelessWidget {
  const PersonalinfoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 50.h),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.gouthrough();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: FlighBcolor, shape: BoxShape.circle),
                    height: 45.h,
                    width: 45.w,
                    child: const Center(
                      child: Icon(CupertinoIcons.back),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Text(
                    "PAYMENT",
                    style: TextStyle(
                        color: Fblackcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}