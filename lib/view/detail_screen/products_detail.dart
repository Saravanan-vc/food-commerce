import 'package:commerce/ui/colors_ui.dart';
import 'package:commerce/ui/extension/overall_extension.dart';
import 'package:commerce/ui/images_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsDetail extends StatelessWidget {
  const ProductsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 24.w, right: 24.w, top: 50.h, bottom: 44.w),
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
                    "Details",
                    style: TextStyle(
                        color: Fblackcolor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Fbluecolor),
                  height: 184.w,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 10.h,
                  right: 10.w,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Fblackcolor01, shape: BoxShape.circle),
                    height: 35.h,
                    width: 35.w,
                    child: Center(
                      child: Icon(
                        CupertinoIcons.heart,
                        size: 20.sp,
                        color: Fwhitcolor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 24.h, bottom: 20.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(39),
                  border: Border.all(color: Fbluecolor, width: 1.5)),
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(image: AssetImage(restarunImage)),
                  SizedBox(width: 6.w),
                  Text(
                    "Restaruants Name",
                    style: TextStyle(
                        color: Fblackcolor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.w,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Bruger calzone european",
                style: TextStyle(fontSize: 20.sp).extrabold(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 7.h),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Prosciutto e funghi is a pizza variety that is \ntopped with tomato sauce.",
                style: TextStyle(
                  fontSize: 16.sp,
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
            padding: EdgeInsets.only(left: 24.w, top: 24.h, bottom: 20.h),
            child: Row(
              children: [
                Text(
                  "Size :",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 10.w),
                Container(
                  decoration: const BoxDecoration(
                      color: Fblackcolor01, shape: BoxShape.circle),
                  height: 50.h,
                  width: 50.w,
                  child: Center(
                      child: Text('''10"''',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w500))),
                ),
                SizedBox(width: 10.w),
                Container(
                  decoration: const BoxDecoration(
                      color: Fblackcolor01, shape: BoxShape.circle),
                  height: 50.h,
                  width: 50.w,
                  child: Center(
                      child: Text('''11"''',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w500))),
                ),
                SizedBox(width: 10.w),
                Container(
                  decoration: const BoxDecoration(
                      color: Fblackcolor01, shape: BoxShape.circle),
                  height: 50.h,
                  width: 50.w,
                  child: Center(
                      child: Text('''12"''',
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w500))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.w,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "INGRIDENTS",
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w),
            child: SizedBox(
              height: 50.h,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listofincridient1.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15.w),
                    decoration: const BoxDecoration(
                        color: Fblackcolor01, shape: BoxShape.circle),
                    height: 50.h,
                    width: 50.w,
                    child: Center(child: Image.asset(listofincridient1[index])),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 24.w, right: 24.w),
            child: SizedBox(
              height: 50.h,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listofincridient.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15.w),
                    decoration: const BoxDecoration(
                        color: Fblackcolor01, shape: BoxShape.circle),
                    height: 50.h,
                    width: 50.w,
                    child: Center(child: Image.asset(listofincridient[index])),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
