import 'package:commerce/ui/colors_ui.dart';
import 'package:commerce/ui/extension/overall_extension.dart';
import 'package:commerce/ui/images_ui.dart';
import 'package:commerce/widgets/button_widgets.dart';
import 'package:commerce/widgets/rectanglechip_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowDailogWidget {
  static offerdilog(context) {
    return showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          backgroundColor: Fblackcolor001,
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 380,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: LinearGradient(
                      colors: [Fyellcolor, Forangcolor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      Container(
                        width: 260,
                        height: 150,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(offerImage),
                                fit: BoxFit.fitWidth)),
                        child: Center(
                          child: Text(
                            "Hurry Offers!",
                            style: const TextStyle(color: Fwhitcolor)
                                .fontsize(41)
                                .extrabold(),
                          ),
                        ),
                      ),
                      Text(
                        '#1243CD2',
                        style: const TextStyle(color: Fwhitcolor)
                            .fontsize(30)
                            .extrabold(),
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        "Use the cupon get 25% discount",
                        style: const TextStyle(color: Fwhitcolor)
                            .fontsize(17)
                            .extrabold(),
                      ),
                      SizedBox(height: 20.h),
                      AouterButton(text: "GO", callback: () {}),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -10,
                right: -10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.sp),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Fyellcolor),
                    child: const Icon(
                      CupertinoIcons.clear_thick,
                      color: Forangcolor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  //filterdialog
  static filterdialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 61.h),
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.sp),
                    color: Fwhitcolor),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Filter your search",
                          style: TextStyle(
                              color: Fblackcolor,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold),
                        ),
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
                              child: Icon(Icons.close),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "OFFERS",
                          style: TextStyle(
                            color: Fblackcolor,
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 13.h, bottom: 9.h),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RectanglechipWidget3(
                            title: "Delivery",
                            width: 90,
                          ),
                          RectanglechipWidget3(
                            title: "PickUp",
                            width: 90,
                          ),
                          RectanglechipWidget3(
                            title: "Offer",
                            width: 90,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(39),
                              border:
                                  Border.all(width: 2, color: Fblackcolor01)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 8.h),
                            child: Center(
                              child: Text(
                                "Online payment available",
                                style: const TextStyle().fontsize(16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "DELIVER TIME",
                          style: TextStyle(
                            color: Fblackcolor,
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(39),
                              color: Forangcolor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: Center(
                                child: Text(
                                  "10-15 min",
                                  style: const TextStyle(color: Fwhitcolor)
                                      .fontsize(16),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(39),
                                border:
                                    Border.all(width: 2, color: Fblackcolor01)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: Center(
                                child: Text(
                                  "20 min",
                                  style: const TextStyle().fontsize(16),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(39),
                                border:
                                    Border.all(width: 2, color: Fblackcolor01)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: Center(
                                child: Text(
                                  "30 min",
                                  style: const TextStyle().fontsize(16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "PRICE",
                          style: TextStyle(
                            color: Fblackcolor,
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            margin: EdgeInsets.only(right: 6.w),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Forangcolor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: Center(
                                child: Text(
                                  r"$",
                                  style: const TextStyle(color: Fwhitcolor)
                                      .fontsize(16),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 6.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 2, color: Fblackcolor01)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: Center(
                                child: Text(
                                  r"$$",
                                  style: const TextStyle().fontsize(16),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 6.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 2, color: Fblackcolor01)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: Center(
                                child: Text(
                                  r"$$$",
                                  style: const TextStyle().fontsize(16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "RATING",
                          style: TextStyle(
                            color: Fblackcolor,
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            margin: EdgeInsets.only(right: 6.w),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Forangcolor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: const Center(child: Icon(Icons.star_rate)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 6.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 2, color: Fblackcolor01)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: const Center(child: Icon(Icons.star_rate)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 6.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 2, color: Fblackcolor01)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 10.h),
                              child: const Center(child: Icon(Icons.star_rate)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
//Offers