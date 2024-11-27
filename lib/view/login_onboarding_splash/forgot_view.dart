import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/controller/authentication_controller.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/inputfield_widgets.dart';
import 'package:provider/provider.dart';

class ForgotView extends StatelessWidget {
  const ForgotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationControllerForgetnScreen>(
      builder: (context, conterolerF, child) {
       
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
                          "Forgot Password",
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
                          InputfieldWidgets(
                            hinttext: "example@gmail.com",
                            controller: conterolerF.emailtext,
                            validator: (String? h) {
                              return null;
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 38.h),
                            child: AbuttonWidget(
                              text: "SEND CODE",
                              callback: () {
                                conterolerF.checkthlogin(
                                    conterolerF.emailtext.text, context);
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
      },
    );
  }
}
