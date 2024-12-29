// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/controller/authenticationprovider_controller.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/view/login_onboarding_splash/forgot/screen/forgot_view.dart';
import 'package:food/view/login_onboarding_splash/sigin_view.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Get.find<AuthenticationControllerLoginScreen>().initit();
    return Consumer<AuthenticationControllerLoginScreen>(
      builder: (context, controllerALS, child) {
        (MediaQuery.viewInsetsOf(context).bottom != 0)
            ? controllerALS.isKeybord.value = true
            : controllerALS.isKeybord.value = false;

        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: [
                Container(
                  color: FdarkBcolor,
                  height: ScreenUtil().screenHeight,
                ),
                Image.asset(loginImage),
                Form(
                  key: _key,
                  child: Column(
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
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "EMAIL",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.normal),
                                ),
                                InputfieldWidgetsT(
                                  ontap: () {},
                                  hinttext: "example@gmail.com",
                                  controller: controllerALS.emailtextediting,
                                  obscuretext: false,
                                  suffixicon: false,
                                ),
                                Text(
                                  "PASSWORD",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.normal),
                                ),
                                InputfieldWidgetsT(
                                  hinttext: "* * * * * * * *",
                                  controller: controllerALS.passwordtextediting,
                                  obscuretext: controllerALS.obscuretext,
                                  suffixicon: true,
                                  ontap: controllerALS.changingobscutext,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 29.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        children: [
                                          Checkbox(
                                              splashRadius: 0,
                                              checkColor: Forangcolor,
                                              activeColor: Fwhitcolor,
                                              side: const BorderSide(
                                                  color: Fblackcolor001,
                                                  width: 1.5),
                                              value: controllerALS.checkout,
                                              onChanged: (_) {
                                                controllerALS.changecheckout();
                                              }),
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
                                              builder: (context) =>
                                                  const ForgotView(),
                                            ),
                                          );
                                          // controllerALS.dispose();
                                        },
                                        color: Forangcolor,
                                      )
                                    ],
                                  ),
                                ),
                                AbuttonWidget(
                                    text: "LOGIN IN",
                                    callback: () {
                                      !_key.currentState!.validate()
                                          ? debugPrint("statement")
                                          : controllerALS.chekinglogin(
                                              controllerALS
                                                  .emailtextediting.text,
                                              controllerALS
                                                  .passwordtextediting.text,
                                              context);
                                    }),
                                SizedBox(height: 38.h),
                                Center(
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
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
                                              builder: (context) =>
                                                  const SiginView(),
                                            ),
                                          );
                                          controllerALS.dispose();
                                        },
                                        color: Forangcolor,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 25.h),
                                Center(
                                  child: Text(
                                    "Or",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.normal,
                                        color: Fblackcolor001),
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 62.h,
                                      width: 62.w,
                                      decoration: const BoxDecoration(
                                          color: FLblucolor,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Image.asset(faceImage),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 30.w),
                                      height: 62.h,
                                      width: 62.w,
                                      decoration: const BoxDecoration(
                                          color: FlighBlucolor,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Image.asset(twitterImage),
                                      ),
                                    ),
                                    Container(
                                      height: 62.h,
                                      width: 62.w,
                                      decoration: const BoxDecoration(
                                          color: Fblackcolor,
                                          shape: BoxShape.circle),
                                      child: Image.asset(appleImage),
                                    )
                                  ],
                                ),
                                controllerALS.isKeybord.value
                                    ? SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height /
                                                3,
                                      )
                                    : const Material(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
