import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';

class CarddetailsaddingView extends StatelessWidget {
  const CarddetailsaddingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h),
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
                        child: Icon(CupertinoIcons.clear_thick),
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

            //card holder name
            Padding(
              padding: EdgeInsets.only(top: 24.h, bottom: 8.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "card holder name".toUpperCase(),
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: FlighText,
                  ).extrabold(),
                ),
              ),
            ),
            InputfieldWidgets(
              hinttext: "Vishal Khadok",
              controller: TextEditingController(),
            ),
            // card number
            Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Card number".toUpperCase(),
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: FlighText,
                  ).extrabold(),
                ),
              ),
            ),
            InputfieldWidgets(
              hinttext: "2134   _ _ _ _   _ _ _ _",
              controller: TextEditingController(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180.w,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "expire date".toUpperCase(),
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: FlighText,
                            ).extrabold(),
                          ),
                        ),
                      ),
                      InputfieldWidgets(
                        hinttext: "mm/yyyy",
                        controller: TextEditingController(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 180.w,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.h),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "cvc".toUpperCase(),
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: FlighText,
                            ).extrabold(),
                          ),
                        ),
                      ),
                      InputfieldWidgets(
                        hinttext: "***",
                        controller: TextEditingController(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 34.h),
              child: AbuttonWidget(text: "Add & Make Payment", callback: () {}),
            )
          ],
        ),
      ),
    );
  }
}
