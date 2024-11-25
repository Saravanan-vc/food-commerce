import 'package:commerce/constains/food_constains.dart';
import 'package:commerce/ui/colors_ui.dart';
import 'package:commerce/ui/extension/overall_extension.dart';
import 'package:commerce/widgets/cardpopular_widgets.dart';
import 'package:commerce/widgets/rectanglechip_widget.dart';
import 'package:commerce/widgets/showdialog_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestarunatsDetail extends StatelessWidget {
  const RestarunatsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 50.h, bottom: 44.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                          "Restaurant View",
                          style: TextStyle(
                              color: Fblackcolor,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      ShowDailogWidget.filterdialog(context);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: FlighBcolor, shape: BoxShape.circle),
                      height: 45.h,
                      width: 45.w,
                      child: const Center(
                        child: Icon(Icons.more_horiz_rounded),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18), color: Fbluecolor),
                height: 184.w,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 24.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Restaruants Name",
                  style: TextStyle(fontSize: 20.sp).extrabold(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 7.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Maecenas sed diam eget risus varius blandit sit \namet non magna. Integer posuere erat a ante \nvenenatis dapibus posuere velit aliquet.",
                  style: TextStyle(
                    fontSize: 17.sp,
                    color: Fblackcolor001,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 24.w),
              child: Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.star,
                        color: Forangcolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Text(
                          "4.7",
                          style: TextStyle(fontSize: 14.sp).extrabold(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 30.w),
                  Row(
                    children: [
                      const Icon(
                        Icons.delivery_dining_outlined,
                        color: Forangcolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Text(
                          "Free",
                          style: TextStyle(fontSize: 14.sp).extrabold(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 30.w),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.time,
                        color: Forangcolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Text(
                          "20 min",
                          style: TextStyle(fontSize: 14.sp).extrabold(),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 20.h, top: 32.h),
              child: SizedBox(
                height: 45.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    return RectanglechipWidget2(
                      title: foodList[index],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 24.h, bottom: 19.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bruger(10)",
                  style: TextStyle(fontSize: 20.sp).extrabold(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [CardpopularWidgets(), CardpopularWidgets()],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
