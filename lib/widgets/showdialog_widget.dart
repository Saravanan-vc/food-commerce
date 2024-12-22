import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/food_constains.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:food/widgets/rectanglechip_widget.dart';
import 'package:permission_handler/permission_handler.dart';

class ShowDailogWidget {
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
                        children: [...starList],
                      ),
                    ),
                    const Spacer(),
                    AbuttonWidget(text: "FILTER", callback: () {}),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          );
        });
  }

  //location if denyed
  static locationdilog(context) async {
    return showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text("Location Permission Needed"),
            content: const Text(
              "To proceed, please grant location access. You can enable it in your device settings.",
            ),
            actions: [
              TextButton(
                onPressed: () async {
                  // Open app settings
                  openAppSettings();
                },
                child: const Text("Go to Settings"),
              ),
              TextButton(
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel"),
              ),
            ],
          );
        });
  }

// starting pop message
  static firstmessage(BuildContext context) async {
   
    return showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      // ignore: use_build_context_synchronously
      context: context,
      backgroundColor: Ftranscolor,
      isScrollControlled: true,
      builder: (context) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                margin: EdgeInsets.symmetric(horizontal: 40.w),
                height: 380,
                width: double.infinity,
                color: Ftranscolor,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset("assets/images/sales.jpg",
                          fit: BoxFit.fill),
                ),
              ),
            ),
            Positioned(
              right: 35.w,
              height: MediaQuery.sizeOf(context).height - 350,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Fyellcolor.withOpacity(0.5)),
                  child: const Icon(
                    CupertinoIcons.clear_thick,
                    color: Fwhitcolor,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
