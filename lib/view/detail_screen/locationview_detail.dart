import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';

class LocationviewDetail extends StatelessWidget {
  const LocationviewDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20.r),
                    ),
                    color: FlighBcolor,
                  ),
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height / 2.5,
                ),
                Positioned(
                  top: 50.h,
                  left: 24.w,
                  child: GestureDetector(
                    onTap: () {
                      context.gouthrough();
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Fblackcolor, shape: BoxShape.circle),
                      height: 45.h,
                      width: 45.w,
                      child: const Center(
                        child: Icon(
                          CupertinoIcons.back,
                          color: Fwhitcolor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 24.w),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ADDRESS",
                    style: TextStyle(fontSize: 17.sp),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: InputfieldWidgetsT(
                  hinttext: "3235 Royal Ln, Mesa, New jersy 34567",
                  controller: TextEditingController(),
                  obscuretext: false,
                  ontap: () {},
                  suffixicon: false),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "STREET",
                        style: TextStyle(fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.5,
                        child: InputfieldWidgetsT(
                            hinttext: "Hason Nagar",
                            controller: TextEditingController(),
                            obscuretext: false,
                            ontap: () {},
                            suffixicon: false),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "POST CODE",
                        style: TextStyle(fontSize: 17.sp),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.5,
                        child: InputfieldWidgetsT(
                            hinttext: "34567",
                            controller: TextEditingController(),
                            obscuretext: false,
                            ontap: () {},
                            suffixicon: false),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 24.w),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "APPARTMENT",
                    style: TextStyle(fontSize: 17.sp),
                  )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: InputfieldWidgetsT(
                  hinttext: "345",
                  controller: TextEditingController(),
                  obscuretext: false,
                  ontap: () {},
                  suffixicon: false),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 24.w),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "LABEL",
                    style: TextStyle(fontSize: 17.sp),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2.5,
                  child: InputfieldWidgetsT(
                      hinttext: "Home",
                      controller: TextEditingController(),
                      obscuretext: false,
                      ontap: () {},
                      suffixicon: false),
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
            )
          ],
        ),
      ),
      bottomSheet: Padding(
          padding: EdgeInsets.only(right: 24.w, left: 24.w, bottom: 10.h),
          child: AbuttonWidget(
            callback: () {},
            text: 'SAVE LOCATION',
          )),
    );
  }
}
