import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/widgets/chatcontant_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';

class ChatdeliveryDetail extends StatelessWidget {
  const ChatdeliveryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 50.h, left: 24.w, right: 24.w, bottom: 10.h),
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
                      child: Icon(
                        CupertinoIcons.clear_thick,
                        color: Fblackcolor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Text(
                    "Robert Fox",
                    style: TextStyle(
                        color: Fblackcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: const ChatcontantWidgetsSender(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: const ChatcontantWidgetsReciver(),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: InputfieldWidgetsM(
                controller: TextEditingController(),
                ontap: () {},
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          )
        ],
      ),
    );
  }
}
