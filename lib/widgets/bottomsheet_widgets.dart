import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/widgets/button_widgets.dart';

class BottomSheetWidgets {
  static Future<void> bottomsheet(context) async {
    await showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 27.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.sp)),
            color: FlighBcolor,
          ),
          height: 184.h,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r"$37",
                    style: TextStyle(fontSize: 28.sp),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    height:
                        MediaQuery.of(context).size.height < 650 ? 60.h : 50.h,
                    width: 128.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.sp),
                        color: Fblackcolor),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Fblackcolor01, shape: BoxShape.circle),
                            height: 24.h,
                            width: 24.w,
                            child: const Center(
                                child: Icon(
                              Icons.remove,
                              color: Fwhitcolor,
                            )),
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Fwhitcolor,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Fblackcolor01, shape: BoxShape.circle),
                            height: 24.h,
                            width: 24.w,
                            child: const Center(
                                child: Icon(
                              Icons.add,
                              color: Fwhitcolor,
                            )),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              AbuttonWidget(text: "Add to cart", callback: () {})
            ],
          ),
        );
      },
    );
  }
}
