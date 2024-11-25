import 'package:commerce/ui/colors_ui.dart';
import 'package:commerce/ui/images_ui.dart';
import 'package:commerce/view/login_onboarding_splash/forgot_view.dart';
import 'package:commerce/view/login_onboarding_splash/sigin_view.dart';
import 'package:commerce/widgets/button_widgets.dart';
import 'package:commerce/widgets/inputfield_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Padding(
                        padding: EdgeInsets.only(bottom: 29.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Checkbox(
                                    splashRadius: 0,
                                    side: const BorderSide(
                                        color: Fblackcolor001, width: 1.5),
                                    value: false,
                                    onChanged: (_) {}),
                                Text(
                                  "Rember me",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Fblackcolor001),
                                )
                              ],
                            ),
                            AtextBwidget(
                              text: "Forgot Password",
                              ontap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const ForgotView(),
                                  ),
                                );
                              },
                              color: Forangcolor,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 38.h),
                        child: AbuttonWidget(text: "LOGIN IN", callback: () {}),
                      ),
                      Center(
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?  ",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Fblackcolor001),
                            ),
                            AtextBwidget(
                              text: "Sign in",
                              ontap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const SiginView(),
                                  ),
                                );
                              },
                              color: Forangcolor,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 27.w),
                        child: Center(
                          child: Text(
                            "Or",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                                color: Fblackcolor001),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 62.h,
                            width: 62.w,
                            decoration: const BoxDecoration(
                                color: FLblucolor, shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(faceImage),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30.w),
                            height: 62.h,
                            width: 62.w,
                            decoration: const BoxDecoration(
                                color: FlighBlucolor, shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(twitterImage),
                            ),
                          ),
                          Container(
                            height: 62.h,
                            width: 62.w,
                            decoration: const BoxDecoration(
                                color: Fblackcolor, shape: BoxShape.circle),
                            child: Image.asset(appleImage),
                          )
                        ],
                      )
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
