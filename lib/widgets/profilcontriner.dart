import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';

class Profilcontriner extends HookWidget {
  final List user;
  const Profilcontriner(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: FlighBcolor),
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: user.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 14.w),
                  child: CircleAvatar(
                    backgroundColor: Fwhitcolor,
                    radius: 20.r,
                    child: Icon(
                      user[index][0],
                      size: 25.sp,
                      color: user[index][3],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    user[index][1],
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Fblackcolor),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {
                      context.gothrough(user[index][2]());
                      debugPrint("statement2");
                      debugPrint("${user[index][2]}()");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16.sp,
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
