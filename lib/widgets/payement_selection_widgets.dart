import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class PayementSelectionWidgets extends StatelessWidget {
  final String paymentImage;
  final String paymentname;
  const PayementSelectionWidgets(
      {super.key, required this.paymentImage, required this.paymentname});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 91.h,
          decoration: BoxDecoration(
              color: FlighBcolor, borderRadius: BorderRadius.circular(15.r)),
          margin: EdgeInsets.only(right: 10.w),
          width: 85.w,
          child: Center(
            child: Image.asset(paymentImage),
          ),
        ),
        const Spacer(),
        Text(
          paymentname,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
