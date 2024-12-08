import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/detail_screen/locationview_detail.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/profilcontriner.dart';

class AddressviewDetail extends StatelessWidget {
  const AddressviewDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 50.h, bottom: 24.h),
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
                      "My Address",
                      style: TextStyle(
                          color: Fblackcolor,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Addresecontainer(
                icon: Icons.home,
                iconcolor: FLblucolor,
                title: "HOME",
                addres: "2464 Royal Ln Mesa New Jersey nodia -4563"),
            SizedBox(height: 20.w),
            const Addresecontainer(
                icon: Icons.work_outline_outlined,
                iconcolor: Fgreencolor,
                title: "WORK",
                addres: "2464 Royal Ln Mesa New Jersey nodia -4563"),
          ],
        ),
      ),
      bottomSheet: Material(
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 10.h),
          child: AbuttonWidget(
              text: "ADD NEW ADDRESS",
              callback: () {
                context.gothrough(const LocationviewDetail());
              }),
        ),
      ),
    );
  }
}
