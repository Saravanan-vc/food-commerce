// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';

class InputfieldWidgets extends StatelessWidget {
  final String hinttext;
  final bool readonly;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const InputfieldWidgets({
    this.readonly = false,
    super.key,
    required this.hinttext,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      margin: EdgeInsets.only(top: 8.h, bottom: 24.h),
      decoration: BoxDecoration(
          color: FlighBcolor, borderRadius: BorderRadius.circular(10.r)),
      child: Center(
        child: TextFormField(
          readOnly: readonly,
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 19.w,
              ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              hintText: hinttext,
              hintStyle: TextStyle(fontSize: 18.sp),
              fillColor: Fblackcolor001),
        ),
      ),
    );
  }
}

class InputfieldWidgetsT extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final bool obscuretext;
  final Function ontap;
  final bool suffixicon;
  final String? Function(String?)? validator;
  const InputfieldWidgetsT({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.obscuretext,
    required this.ontap,
    required this.suffixicon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.h, bottom: 24.h),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 62.h),
        child: TextFormField(
          cursorColor: Forangcolor,
          obscureText: obscuretext,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 19.w),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              hintText: hinttext,
              suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.w),
                  child: suffixicon
                      ? GestureDetector(
                          onTap: () {
                            ontap();
                          },
                          child: const Icon(Icons.remove_red_eye))
                      : null),
              hintStyle: TextStyle(fontSize: 18.sp),
              fillColor: FlighBcolor,
              filled: true),
        ),
      ),
    );
  }
}

// sen message

class InputfieldWidgetsM extends StatelessWidget {
  final Function ontap;
  final TextEditingController controller;

  const InputfieldWidgetsM({
    super.key,
    required this.controller,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.h, bottom: 24.h),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 62.h),
        child: TextFormField(
          cursorColor: Forangcolor,
          controller: controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 19.w),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              hintText: "Write somethings",
              prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.w),
                  child: GestureDetector(
                      onTap: () {
                        ontap();
                      },
                      child: const Icon(Icons.add_reaction_outlined))),
              suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.w),
                  child: GestureDetector(
                      onTap: () {
                        ontap();
                      },
                      child: const Icon(Icons.send))),
              hintStyle: TextStyle(fontSize: 18.sp),
              fillColor: FlighBcolor,
              filled: true),
        ),
      ),
    );
  }
}

class InputfieldWidgetsBIO extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final bool obscuretext;
  final Function ontap;
  final bool suffixicon;
  final String? Function(String?)? validator;
  const InputfieldWidgetsBIO({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.obscuretext,
    required this.ontap,
    required this.suffixicon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.h, bottom: 24.h),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 300.h),
        child: TextFormField(
          cursorColor: Forangcolor,
          obscureText: obscuretext,
          controller: controller,
          validator: validator,
          maxLines: 4,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 19.w, right: 19.w, top: 20.h),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none),
              hintText: hinttext,
              suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.w),
                  child: suffixicon
                      ? GestureDetector(
                          onTap: () {
                            ontap();
                          },
                          child: const Icon(Icons.remove_red_eye))
                      : null),
              hintStyle: TextStyle(fontSize: 18.sp),
              fillColor: FlighBcolor,
              filled: true),
        ),
      ),
    );
  }
}
