import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/controller/authenticationprovider_controller.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/view/login_onboarding_splash/forgot/controllers/verfiy_code.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SiginView extends StatelessWidget {
  final bool forget;
  const SiginView({super.key, this.forget = false});

  @override
  Widget build(BuildContext context) {
    VerfiyCode verfiyCode = Get.find<VerfiyCode>(tag: 'verfiycode');
    return Consumer<AuthenticationControllerSignScreen>(
      builder: (context, controllerSV, child) {
        (MediaQuery.viewInsetsOf(context).bottom != 0)
            ? controllerSV.isKeybord.value = true
            : controllerSV.isKeybord.value = false;
        forget
            ? controllerSV.emailtextediting.text = verfiyCode.email.text
            : null;
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
                          forget ? "Forget" : "Login",
                          style: TextStyle(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w900,
                              color: Fwhitcolor),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          forget
                              ? "Please enter password do you want"
                              : "Please sign in to your existing account",
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
                            forget
                                ? const Material()
                                : Text(
                                    "NAME",
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                            forget
                                ? const Material()
                                : InputfieldWidgets(
                                    hinttext: "JONE DOE",
                                    controller: controllerSV.nametextediting,
                                  ),
                            Text(
                              "EMAIL",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                            forget
                                ? InputfieldWidgets(
                                    readonly: true,
                                    hinttext: "example@gmail.com",
                                    controller: controllerSV.emailtextediting,
                                  )
                                : InputfieldWidgets(
                                    hinttext: "example@gmail.com",
                                    controller: controllerSV.emailtextediting,
                                  ),
                            Text(
                              "PASSWORD",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                            InputfieldWidgetsT(
                              hinttext: "* * * * * * * *",
                              controller: controllerSV.passwordtextediting,
                              obscuretext: !controllerSV.checkout,
                              ontap: () {
                                controllerSV.changecheckout();
                              },
                              suffixicon: true,
                            ),
                            Text(
                              "RE-TYPE PASSWORD",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                            InputfieldWidgetsT(
                              hinttext: "* * * * * * * *",
                              controller: controllerSV.retypetextediting,
                              obscuretext: !controllerSV.checkout1,
                              ontap: () {
                                controllerSV.changecheckout1();
                              },
                              suffixicon: true,
                            ),
                            AbuttonWidget(
                              text: "LOGIN IN",
                              callback: () {
                                forget
                                    ? verfiyCode.updatepassword(
                                        controllerSV.emailtextediting.text,
                                        controllerSV.passwordtextediting.text,
                                        context)
                                    : controllerSV.gohomescreen(
                                        controllerSV.emailtextediting.text,
                                        controllerSV.passwordtextediting.text,
                                        controllerSV.nametextediting.text,
                                        context);
                              },
                            ),
                            controllerSV.isKeybord.value
                                ? SizedBox(
                                    height:
                                        MediaQuery.sizeOf(context).height / 3,
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
