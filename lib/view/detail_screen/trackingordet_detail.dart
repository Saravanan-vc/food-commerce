import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/widgets/trackingscreen_order_widgets.dart';

class TrackingordetDetail extends StatelessWidget {
  const TrackingordetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlighText,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.h, left: 24.w, right: 24.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.gouthrough();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Fblackcolor, shape: BoxShape.circle),
                    height: 45.h,
                    width: 45.w,
                    child: const Center(
                      child: Icon(
                        CupertinoIcons.back,
                        color: FlighBcolor,
                      ),
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
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.23,
              minChildSize: .23,
              maxChildSize: .9,
              builder: (context, scroll) {
                return Container(
                  decoration: BoxDecoration(
                      color: Fwhitcolor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30.r))),
                  height: context.fullHeight * 0.50,
                  child: ListView(
                    controller: scroll,
                    physics: const PageScrollPhysics(),
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 4.h, bottom: 20.h, left: 150.w, right: 150.w),
                        width: 80,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: FlighText,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: const TrackingscreenOrderWidgets(remove: false),
                      ),
                      SizedBox(height: 20.h),
                      Center(
                        child: Text(
                          "20 MIN", //Estimated delivery time
                          style: TextStyle(fontSize: 40.sp).extrabold(),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Estimated delivery time",
                          style: TextStyle(fontSize: 22.sp, color: FlighText)
                              .extrabold(),
                        ),
                      ),
                      SizedBox(
                        height: 350.h,
                        child: const Column(
                          children: [],
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            Container(
                              height: 60.h,
                              width: 60.w,
                              margin: EdgeInsets.only(right: 8.w),
                              decoration: const BoxDecoration(
                                  color: Fblackcolor, shape: BoxShape.circle),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Robert F.".toUpperCase(),
                                ),
                                const Text("courier"),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: const BoxDecoration(
                                  color: Forangcolor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Forangcolor,
                                        spreadRadius: 4,
                                        blurRadius: 4)
                                  ]),
                              child: const Center(
                                child: Icon(
                                  Icons.call_outlined,
                                  color: Fwhitcolor,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 6.w),
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  color: Fwhitcolor,
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(width: 2, color: Forangcolor)),
                              child: const Icon(
                                CupertinoIcons.chat_bubble_text,
                                color: Forangcolor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
