import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';

class ProfileditingDetail extends StatelessWidget {
  const ProfileditingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 50.h, bottom: 25.h),
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
                      "Edit Profile",
                      style: TextStyle(
                          color: Fblackcolor,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 90.r,
                    backgroundColor: Fredcolor.withOpacity(0.5),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 30.r,
                      backgroundColor: Forangcolor,
                      child: Icon(
                        Icons.edit,
                        color: Fwhitcolor,
                        size: 30.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 24.w),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "FULL NAME",
                    style: TextStyle(fontSize: 17.sp),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: InputfieldWidgetsT(
                  hinttext: "Vihal Khaldak",
                  controller: TextEditingController(),
                  obscuretext: false,
                  ontap: () {},
                  suffixicon: false),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 24.w),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "EMAIL",
                    style: TextStyle(fontSize: 17.sp),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: InputfieldWidgetsT(
                  hinttext: "Hello@gmail.com",
                  controller: TextEditingController(),
                  obscuretext: false,
                  ontap: () {},
                  suffixicon: false),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 24.w),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "PHONE NUMBER",
                    style: TextStyle(fontSize: 17.sp),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: InputfieldWidgetsT(
                  hinttext: "000-000-0000",
                  controller: TextEditingController(),
                  obscuretext: false,
                  ontap: () {},
                  suffixicon: false),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h, left: 24.w),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "BIO",
                    style: TextStyle(fontSize: 17.sp),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: InputfieldWidgetsBIO(
                  hinttext: "I Loved Fast Food",
                  controller: TextEditingController(),
                  obscuretext: false,
                  ontap: () {},
                  suffixicon: false),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 10.h),
                child: AbuttonWidget(text: "SAVE", callback: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }
}
