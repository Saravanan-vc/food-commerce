import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class SearchWidgets extends StatelessWidget {
  const SearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 19.h),
      margin: EdgeInsets.only(left: 24.w, right: 24.w),
      height: 62.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlighBcolor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
        const Icon(CupertinoIcons.search),
        SizedBox(
          width: 4.w,
        ),
        Text(
          "Search dishes, restaurants",
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}

//ther real search bar
class RSearchWidgets extends StatelessWidget {
  const RSearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      margin: EdgeInsets.only(left: 24.w, right: 24.w),
      height: 62.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlighBcolor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.search),
          SizedBox(
            width: 4.w,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search dishes, restaurants",
                hintStyle:
                    TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const Icon(
            CupertinoIcons.clear_circled_solid,
            color: Fblackcolor001,
          ),
        ],
      ),
    );
  }
}
