import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/detail_screen/products_detail.dart';

class CardpopularWidgets extends StatelessWidget {
  const CardpopularWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.gothrough(const ProductsDetail());
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        height: 222.h,
        width: 183.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.sp),
            color: Fwhitcolor,
            boxShadow: const [
              BoxShadow(spreadRadius: 0, blurRadius: 6, color: Fblackcolor01)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 2.h),
              height: 110.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.sp),
                  color: Fbluecolor),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text(
                "Dishe Name",
                style: const TextStyle(color: Fblackcolor)
                    .fontsize(20)
                    .extrabold(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text("Restaruants Name",
                  style: const TextStyle(color: Fblackcolor002).fontsize(16)),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r"$47",
                    style: const TextStyle(color: Fblackcolor)
                        .fontsize(20)
                        .extrabold(),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Forangcolor, shape: BoxShape.circle),
                    height: 35.h,
                    width: 35.w,
                    child: Center(
                      child: Icon(
                        CupertinoIcons.add,
                        size: 20.sp,
                        color: Fwhitcolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
