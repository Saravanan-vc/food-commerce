import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/paymentselection_constains.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/view/carddetailsadding_view.dart';
import 'package:food/view/detail_screen/confromation_detail.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/payement_selection_widgets.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 50.h),
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
                    "PAYMENT",
                    style: TextStyle(
                        color: Fblackcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 31.h),
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 25.h),
            child: SizedBox(
              height: 120.h,
              child: ListView.builder(
                itemCount: paymentSelectiion.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return PayementSelectionWidgets(
                    paymentImage: paymentSelectiion[index][0],
                    paymentname: paymentSelectiion[index][1],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Container(
              decoration: BoxDecoration(
                  color: FlighBcolor,
                  borderRadius: BorderRadius.circular(8.sp)),
              padding: EdgeInsets.only(bottom: 30.h),
              width: double.infinity,
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 312.h,
                        width: double.infinity,
                        child: Image.asset(
                          visaCardImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        child: Column(
                          children: [
                            Text(
                              "No master card added",
                              style: const TextStyle().fontsize(20).extrabold(),
                            ),
                            Text(
                              "You can add a mastercard and \n save it for later",
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Fblackcolor001)
                                  .fontsize(16)
                                  .extrabold(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 15.h),
            child: AouterButton1(
              text: "+ ADD NEW",
              callback: () {
                context.gothrough(const CarddetailsaddingView());
              },
              bodercolor: Fblackcolor01,
              innercolor: Fwhitcolor,
              textcolor: Forangcolor,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                Text(
                  "TOTAL : ",
                  style: const TextStyle(
                          color: Fblackcolor, fontWeight: FontWeight.w500)
                      .fontsize(16),
                ),
                Text(
                  r" $69",
                  style: const TextStyle().fontsize(30).extrabold(),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AbuttonWidget(
                text: "PAY & CONFRIM",
                callback: () {
                  context.gothrough(const ConfromationDetail());
                }),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
