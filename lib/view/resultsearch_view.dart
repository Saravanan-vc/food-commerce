import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/widgets/cardpopular_widgets.dart';
import 'package:food/widgets/restaurants_card.dart';

class ResultsearchView extends StatelessWidget {
  const ResultsearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(39),
                          border: Border.all(color: Fbluecolor, width: 2)),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
                      child: Row(
                        children: [
                          Text(
                            "Burger",
                            style: TextStyle(
                                color: Fblackcolor,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 4.w),
                          const Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Forangcolor,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                        color: Fblackcolor, shape: BoxShape.circle),
                    height: 45.h,
                    width: 45.w,
                    child: Center(
                      child: Icon(
                        CupertinoIcons.search,
                        size: 20.sp,
                        color: Fwhitcolor,
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Container(
                    decoration: const BoxDecoration(
                        color: FlighBcolor, shape: BoxShape.circle),
                    height: 45.h,
                    width: 45.w,
                    child: Center(
                      child: Icon(
                        Icons.filter_list_alt,
                        size: 20.sp,
                        color: Fblackcolor001,
                      ),
                    ),
                  ),
                ],
              ),
            ),
           //popular burger
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Popular Bruger",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [CardpopularWidgets(), CardpopularWidgets()],
                    );
                  }),
            ),
            //open restarunts
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Open Restaruants",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const RestaurantsCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
