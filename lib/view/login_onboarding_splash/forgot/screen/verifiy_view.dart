import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/view/login_onboarding_splash/forgot/controllers/verfiy_code.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/singelbox_widgets.dart';
import 'package:food/widgets/timerdecrese_widgets.dart';
import 'package:get/get.dart';

class VerifiyView extends StatefulWidget {
  final String text;
  const VerifiyView({super.key, required this.text});

  @override
  State<VerifiyView> createState() => _VerifiyViewState();
}

class _VerifiyViewState extends State<VerifiyView> {
  VerfiyCode verfiyCode = Get.find<VerfiyCode>(tag: 'verfiycode');
  TimerdecreseWidgets timerdecreseWidgets =
      Get.find<TimerdecreseWidgets>(tag: "timer");
  @override
  void initState() {
    timerdecreseWidgets.timer();
    super.initState();
  }

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
                      "We have sent a code to your email \n${widget.text}",
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
                                fontSize: 13.sp, fontWeight: FontWeight.normal),
                          ),
                          Wrap(
                            children: [
                              Obx(() {
                                return Aunderbutton(
                                  ontap: timerdecreseWidgets.time.value == 0
                                      ? () {
                                          timerdecreseWidgets.time.value = 60;
                                        }
                                      : () {},
                                  color: timerdecreseWidgets.time.value == 0
                                      ? Forangcolor
                                      : Fblackcolor,
                                );
                              }),
                              Obx(() {
                                return Text(
                                    "  in ${timerdecreseWidgets.time.value}.s",
                                    style: TextStyle(fontSize: 14.sp));
                              })
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SingelboxWidgets(
                              code: timerdecreseWidgets.code1,
                              backwards: false,
                              frontgo: true,
                            ),
                            SingelboxWidgets(
                              code: timerdecreseWidgets.code2,
                              frontgo: true,
                              backwards: true,
                            ),
                            SingelboxWidgets(
                              code: timerdecreseWidgets.code3,
                              frontgo: true,
                              backwards: true,
                            ),
                            SingelboxWidgets(
                              code: timerdecreseWidgets.code4,
                              frontgo: false,
                              backwards: true,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 38.h),
                        child: AbuttonWidget(
                          text: "SEND CODE",
                          callback: () {
                            String code = timerdecreseWidgets.makecode();
                            verfiyCode.checkcode(
                                '$code/${widget.text}', context);
                            timerdecreseWidgets.clear();
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
