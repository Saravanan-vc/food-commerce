import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/controller/authentication_controller.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/view/login_onboarding_splash/locationaccess_view.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';
import 'package:provider/provider.dart';

class SiginView extends StatelessWidget {
  const SiginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationControllerSignScreen>(
      builder: (context, controllerSV, child) {
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
                          InputfieldWidgets(
                            hinttext: "JONE DOE",
                            controller: controllerSV.nametextediting,
                          ),
                          Text(
                            "EMAIL",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.normal),
                          ),
                          InputfieldWidgets(
                            hinttext: "example@gmail.com",
                            controller: controllerSV.emailtextediting,
                          ),
                          Text(
                            "PASSWORD",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.normal),
                          ),
                          InputfieldWidgetsT(
                            hinttext: "* * * * * * * *",
                            controller: controllerSV.passwordtextediting,
                            obscuretext: controllerSV.checkout,
                            ontap: () {
                              controllerSV.changecheckout();
                            },
                            suffixicon: true,
                          ),
                          Text(
                            "RE-TYPE PASSWORD",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.normal),
                          ),
                          InputfieldWidgetsT(
                            hinttext: "* * * * * * * *",
                            controller: controllerSV.retypetextediting,
                            obscuretext: controllerSV.checkout1,
                            ontap: () {
                              controllerSV.changecheckout1();
                            },
                            suffixicon: true,
                          ),
                          AbuttonWidget(
                            text: "LOGIN IN",
                            callback: () {
                              controllerSV.gohomescreen(
                                  controllerSV.emailtextediting.text,
                                  controllerSV.passwordtextediting.text,
                                  controllerSV.nametextediting.text,
                                  context);
                            },
                          ),
                          const Spacer(),
                        ],
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
