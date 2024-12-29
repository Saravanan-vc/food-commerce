import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/userprofil_constains.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/detail_screen/profilediting_detail.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/view/profil_view/widget/profilcontriner.dart';

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
                    "Personal Info",
                    style: TextStyle(
                        color: Fblackcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Aunderbutton1(
                    ontap: () {
                      context.gothrough(const ProfileditingDetail());
                    },
                    text: "EDIT",
                    textcolor: Forangcolor)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 24.w, right: 24.w, bottom: 32.h, top: 24.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 70.r,
                  backgroundColor: Fredcolor.withOpacity(0.5),
                ),
                SizedBox(width: 32.w),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vishal Khadok",
                      style: TextStyle(
                          color: Fblackcolor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "I love fast food",
                      style: TextStyle(
                          color: Fblackcolor.withOpacity(0.3),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ))
              ],
            ),
          ),
          Profilcontriner2(
            user: userinfo,
            title: title,
          ),
        ],
      ),
    );
  }
}
