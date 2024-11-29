// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

// container Button
class AbuttonWidget extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const AbuttonWidget({super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 62.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r), color: Forangcolor),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Fwhitcolor),
          ),
        ),
      ),
    );
  }
}

// Text Button
class AtextBwidget extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Color color;
  const AtextBwidget({
    super.key,
    required this.text,
    required this.ontap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16.sp, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }
}

// UnderLine Button
class Aunderbutton extends StatelessWidget {
  final VoidCallback ontap;
  const Aunderbutton({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Fblackcolor),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.h),
          child: Text(
            "RESEND",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

// UnderLine Button
class Aunderbutton1 extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  final Color textcolor;
  const Aunderbutton1(
      {super.key,
      required this.ontap,
      required this.text,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: textcolor),
          ),
        ),
        
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.h),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14.sp, fontWeight: FontWeight.w600, color: textcolor),
          ),
        ),
      ),
    );
  }
}

//Button with icon
class AiconButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  final IconData icon;
  const AiconButton(
      {super.key,
      required this.callback,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 62.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r), color: Forangcolor),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Fwhitcolor),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.sp),
                decoration: const BoxDecoration(
                    color: Fshadecolor, shape: BoxShape.circle),
                child: Icon(
                  icon,
                  size: 16.sp,
                  color: Fwhitcolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//outer line color
class AouterButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const AouterButton({super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 62.h,
        width: 250.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Forangcolor,
            border: Border.all(width: 2, color: Fwhitcolor)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Fwhitcolor),
          ),
        ),
      ),
    );
  }
}
