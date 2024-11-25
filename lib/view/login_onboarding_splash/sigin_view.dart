import 'package:commerce/ui/colors_ui.dart';
import 'package:commerce/ui/images_ui.dart';
import 'package:commerce/view/login_onboarding_splash/locationaccess_view.dart';
import 'package:commerce/widgets/button_widgets.dart';
import 'package:commerce/widgets/inputfield_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiginView extends StatelessWidget {
  const SiginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: FdarkBcolor,
            height: ScreenUtil().screenHeight,
          ),
          Image.asset(loginImage),
          Column(
            children: [
              const Spacer(),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w900,
                          color: Fwhitcolor),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Please sign in to your existing account",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Fwhitcolor),
                    )
                  ],
                ),
              ),
              SizedBox(height: 48.h),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.r),
                    color: Fwhitcolor),
                height: MediaQuery.sizeOf(context).height / 1.5,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NAME",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.normal),
                      ),
                      const InputfieldWidgets(hinttext: "JONE DOE"),
                      Text(
                        "EMAIL",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.normal),
                      ),
                      const InputfieldWidgets(hinttext: "example@gmail.com"),
                      Text(
                        "PASSWORD",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.normal),
                      ),
                      const InputfieldWidgets(hinttext: "* * * * * * * *"),
                      Text(
                        "RE-TYPE PASSWORD",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.normal),
                      ),
                      const InputfieldWidgets(hinttext: "* * * * * * * *"),
                      Padding(
                        padding: EdgeInsets.only(bottom: 38.h),
                        child: AbuttonWidget(
                          text: "LOGIN IN",
                          callback: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const LocationaccessView(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
