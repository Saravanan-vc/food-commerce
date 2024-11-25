import 'package:commerce/ui/colors_ui.dart';
import 'package:commerce/view/login_onboarding_splash/login_view.dart';
import 'package:commerce/widgets/button_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 67.w),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r), color: Fbluecolor),
              height: 292.h,
              width: 240.w,
            ),
          ),
          SizedBox(height: 67.h),
          Text(
            "All your favorites",
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w900,
                color: Fblackcolor),
          ),
          SizedBox(height: 24.h),
          Text(
            "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: Fblackcolor001),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AbuttonWidget(
                text: "NEXT",
                callback: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const OnboardingView1()));
                }),
          ),
          SizedBox(height: 16.h),
          AtextBwidget(
              text: "SKIP",
              ontap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const OnboardingView2()));
              },
              color: Fblackcolor001),
          SizedBox(height: 40.h)
        ],
      ),
    );
  }
}

//onboardingview1

class OnboardingView1 extends StatelessWidget {
  const OnboardingView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 67.w),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r), color: Fbluecolor),
              height: 292.h,
              width: 240.w,
            ),
          ),
          SizedBox(height: 67.h),
          Text(
            "Order from choosen chef",
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w900,
                color: Fblackcolor),
          ),
          SizedBox(height: 24.h),
          Text(
            "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: Fblackcolor001),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AbuttonWidget(
                text: "NEXT",
                callback: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const OnboardingView2()));
                }),
          ),
          SizedBox(height: 16.h),
          AtextBwidget(
              text: "SKIP",
              ontap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const OnboardingView2()));
              },
              color: Fblackcolor001),
          SizedBox(height: 40.h)
        ],
      ),
    );
  }
}

//onboardingview2

class OnboardingView2 extends StatelessWidget {
  const OnboardingView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 67.w),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r), color: Fbluecolor),
              height: 292.h,
              width: 240.w,
            ),
          ),
          SizedBox(height: 67.h),
          Text(
            "Free delivery offers",
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w900,
                color: Fblackcolor),
          ),
          SizedBox(height: 24.h),
          Text(
            "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: Fblackcolor001),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AbuttonWidget(
              text: "GET STARTED",
              callback: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 75.h)
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////

class OnboardingViewHorizontal extends StatelessWidget {
  const OnboardingViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Fbluecolor),
                  height: 352.h,
                  width: 100.w,
                ),
                SizedBox(height: 67.h),
                Text(
                  "Order from choosen chef",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w900,
                      color: Fblackcolor),
                ),
                SizedBox(height: 24.h),
                Text(
                  "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w900,
                      color: Fblackcolor001),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: AbuttonWidget(
                      text: "NEXT",
                      callback: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                const OnboardingViewHorizontal2()));
                      }),
                ),
                SizedBox(
                  height: 15.h,
                ),
                AtextBwidget(
                    text: "SKIP",
                    ontap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const OnboardingViewHorizontal2()));
                    },
                    color: Fblackcolor001),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class OnboardingViewHorizontal2 extends StatelessWidget {
  const OnboardingViewHorizontal2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Fbluecolor),
                  height: 352.h,
                  width: 100.w,
                ),
                SizedBox(height: 67.h),
                Text(
                  "Free delivery offers",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w900,
                      color: Fblackcolor),
                ),
                SizedBox(height: 24.h),
                Text(
                  "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
                  style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w900,
                      color: Fblackcolor001),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: AbuttonWidget(
                      text: "NEXT",
                      callback: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                const OnboardingViewHorizontal2()));
                      }),
                ),
                SizedBox(
                  height: 15.h,
                ),
                AtextBwidget(
                    text: "SKIP",
                    ontap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const OnboardingViewHorizontal2()));
                    },
                    color: Fblackcolor001),
              ],
            ),
          )
        ],
      ),
    );
  }
}
