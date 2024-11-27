
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/food_constains.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/resultsearch_view.dart';
import 'package:food/widgets/cardpopular_widgets.dart';
import 'package:food/widgets/rectanglechip_widget.dart';
import 'package:food/widgets/search_widgets.dart';
import 'package:food/widgets/sugrestarunts_widgets.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

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
                    child: Text(
                      "Search",
                      style: TextStyle(
                          color: Fblackcolor,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold),
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
                        CupertinoIcons.bag,
                        size: 20.sp,
                        color: Fwhitcolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.w, bottom: 31.h),
              child: const RSearchWidgets(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recent Keywords",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 20.h, top: 10.h),
              child: SizedBox(
                height: 45.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.gothrough(const ResultsearchView());
                      },
                      child: RectanglechipWidget2(
                        title: foodList[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 20.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Suggested Restaurants",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ListView.builder(
                itemCount: context.fullHeight < 650 ? 3 : 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const SugrestaruntsWidgets();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Popular Fast food",
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
            )
          ],
        ),
      ),
    );
  }
}
