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
            ],
          ),
        ),
      ),
    );
  }
}
