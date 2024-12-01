import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/view/detail_screen/calldriver_detail.dart';
import 'package:food/view/detail_screen/chatdelivery_detail.dart';
import 'package:food/widgets/trackingscreen_order_widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackingordetDetail extends StatelessWidget {
  const TrackingordetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlighText,
      body: Stack(
        children: [
          Column(
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
                        "Track Order",
                        style: TextStyle(
                            color: Fblackcolor,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Center(child: Image.asset(demolocationImage)),
            ],
          ),
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.23,
              minChildSize: .23,
              maxChildSize: .84,
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
                      SizedBox(height: 30.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35.w),
                        child: SizedBox(
                            height: 340.h,
                            child: Column(
                              children: [
                                ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxHeight: 75),
                                    child: TimelineTile(
                                      beforeLineStyle: const LineStyle(
                                        color: Forangcolor,
                                        thickness: 4,
                                      ),
                                      endChild: Center(
                                        child: SizedBox(
                                          height: 80.h,
                                          child: const Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '   Your order has been received',
                                                  style: TextStyle(
                                                      color: Forangcolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      isFirst: true,
                                      indicatorStyle: IndicatorStyle(
                                        width: 30.sp,
                                        color: Forangcolor,
                                        iconStyle: IconStyle(
                                          color: Colors.white,
                                          iconData: Icons.check,
                                        ),
                                      ),
                                    )),
                                ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxHeight: 75),
                                    child: TimelineTile(
                                      beforeLineStyle: const LineStyle(
                                        color: Forangcolor,
                                        thickness: 4,
                                      ),
                                      endChild: SizedBox(
                                        height: 80.h,
                                        child: const Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                '   The restaurant is preparing your food',
                                                style: TextStyle(
                                                    color: Forangcolor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      indicatorStyle: IndicatorStyle(
                                        width: 30.sp,
                                        color: Forangcolor,
                                        iconStyle: IconStyle(
                                          color: Colors.white,
                                          iconData: Icons
                                              .wifi_protected_setup_rounded,
                                        ),
                                      ),
                                    )),
                                ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxHeight: 75),
                                    child: TimelineTile(
                                      endChild: SizedBox(
                                        height: 80.h,
                                        child: const Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                  '   Your order has been picked up for delivery'),
                                            ],
                                          ),
                                        ),
                                      ),
                                      indicatorStyle: IndicatorStyle(
                                        width: 30.sp,
                                        iconStyle: IconStyle(
                                          color: Colors.white,
                                          iconData: Icons.check,
                                        ),
                                      ),
                                    )),
                                ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxHeight: 75),
                                  child: TimelineTile(
                                    endChild: SizedBox(
                                      height: 80.h,
                                      child: const Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text('   Order arriving soon!'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    isLast: true,
                                    indicatorStyle: IndicatorStyle(
                                      width: 30.sp,
                                      iconStyle: IconStyle(
                                        color: Colors.white,
                                        iconData: Icons.check,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
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
                                  "Robert F.",
                                  style: const TextStyle()
                                      .fontsize(22)
                                      .extrabold(),
                                ),
                                Text(
                                  "courier",
                                  style: const TextStyle(color: Fblackcolor002)
                                      .fontsize(16)
                                      .extrabold(),
                                ),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                context.gothrough(const CalldriverDetail());
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 5.w),
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
                            ),
                            GestureDetector(
                              onTap: () {
                                context.gothrough(const ChatdeliveryDetail());
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 6.w),
                                height: 50.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    color: Fwhitcolor,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2, color: Forangcolor)),
                                child: const Icon(
                                  CupertinoIcons.chat_bubble_text,
                                  color: Forangcolor,
                                ),
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
