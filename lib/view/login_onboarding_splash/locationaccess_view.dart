import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/permissionhandler_constains.dart';
import 'package:food/ui/colors_ui.dart';
// import 'package:food/view/home_view.dart';
import 'package:food/widgets/button_widgets.dart';

class LocationaccessView extends StatelessWidget {
  const LocationaccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90.r), color: Fbluecolor),
              height: 250.h,
              width: 206.w,
            ),
            SizedBox(height: 93.h),
            AiconButton(
                callback: () {
                 PermissionhandlerConstains().locationPermission(context);
                },
                text: "ACCESS LOCATION",
                icon: Icons.location_pin),
            SizedBox(height: 35.h),
            Text(
              textAlign: TextAlign.center,
              "DFOOD WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP",
              style: TextStyle(fontSize: 16.sp, color: Fblackcolor001),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
