import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/detail_screen/restarunats_detail.dart';

class RestaurantsCard extends StatelessWidget {
  const RestaurantsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.gothrough(const RestarunatsDetail());
      },
      child: Padding(
        padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
        child: SizedBox(
          height: context.fullHeight < 650 ? 0.28.sh : 0.28.sh,
          // width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 137.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.sp),
                    color: Fbluecolor),
              ),
              const Spacer(),
              Text(
                "Restaruants Name",
                style: TextStyle(fontSize: 20.sp, color: Fblackcolor),
              ),
              const Spacer(),
              Text(
                "Burger - Chiken - Riche - Wings ",
                style: TextStyle(fontSize: 20.sp, color: Fblackcolor001),
              ),
              const Spacer(),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.star,
                        color: Forangcolor,
                      ),
                      Text(
                        "4.7",
                        style: TextStyle(fontSize: 14.sp).extrabold(),
                      )
                    ],
                  ),
                  SizedBox(width: 12.w),
                  Row(
                    children: [
                      const Icon(
                        Icons.delivery_dining_outlined,
                        color: Forangcolor,
                      ),
                      Text(
                        "Free",
                        style: TextStyle(fontSize: 14.sp).extrabold(),
                      )
                    ],
                  ),
                  SizedBox(width: 12.w),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.time,
                        color: Forangcolor,
                      ),
                      Text(
                        "20 min",
                        style: TextStyle(fontSize: 14.sp).extrabold(),
                      )
                    ],
                  )
                ],
              ),
              const Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }
}

// cart side viewing add to cart card
class CartviewingCard extends StatelessWidget {
  final bool remove;
  const CartviewingCard({super.key, required this.remove});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Fwhitecolor012,
        ),
        height: 185.h,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
              height: double.infinity,
              width: 150.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Fwhitcolor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "Food name odered",
                        style: TextStyle(color: Fwhitcolor, fontSize: 20.sp),
                      ),
                      remove
                          ? Container(
                              margin: EdgeInsets.only(left: 6.h),
                              decoration: const BoxDecoration(
                                color: Fredcolor,
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(3.sp),
                              child: const Center(
                                  child: Icon(
                                CupertinoIcons.clear,
                                color: Fwhitcolor,
                              )),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  Text(
                    "Restaruant name odered",
                    style: TextStyle(color: Fwhitcolor, fontSize: 16.sp),
                  ),
                  const Spacer(),
                  Text(
                    r"$45",
                    style: TextStyle(color: Fwhitcolor, fontSize: 22.sp),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '''14"''',
                        style: TextStyle(fontSize: 22.sp, color: Fwhitcolor),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45.w),
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        height: MediaQuery.of(context).size.height < 650
                            ? 60.h
                            : 50.h,
                        width: 128.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.sp),
                            color: Ftranscolor),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Fwhitecolor012,
                                    shape: BoxShape.circle),
                                padding: EdgeInsets.all(3.sp),
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
                                    color: Fwhitecolor012,
                                    shape: BoxShape.circle),
                                padding: EdgeInsets.all(3.sp),
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
