import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/singelbox_widgets.dart';
import 'package:food/widgets/timerdecrese_widgets.dart';
import 'package:provider/provider.dart';

class VerifiyView extends StatelessWidget {
  const VerifiyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TimerdecreseWidgets>(
        builder: (context, controllerVV, child) {
      Future.delayed(const Duration(seconds: 1), () {
        controllerVV.timer();
      });
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
                        "Verification",
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w900,
                            color: Fwhitcolor),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        "We have sent a code to your email \nexample@gmail.com",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                            color: Fwhitcolor),
                        textAlign: TextAlign.center,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "CODE",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                            Wrap(
                              children: [
                                Aunderbutton(ontap: () {}),
                                Text("  in ${controllerVV.time}.s",
                                    style: TextStyle(fontSize: 14.sp))
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child:const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SingelboxWidgets(
                                backwards: false,
                                frontgo: true,
                                  ),
                              SingelboxWidgets(frontgo: true, backwards: true,
                                  ),
                              SingelboxWidgets(frontgo: true, backwards: true,
                                  ),
                              SingelboxWidgets(frontgo: false, backwards: true,
                                  ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 38.h),
                          child: AbuttonWidget(
                            text: "SEND CODE",
                            callback: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) => const VerifiyView(),
                              //   ),
                              // );
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
    });
  }
}
