// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/login_onboarding_splash/login_view.dart';
import 'package:food/widgets/button_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        ],
      ),
    );
  }
}

// onbordiing with animation
class OnboardingView3 extends HookWidget {
  const OnboardingView3({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = useState(0);

    PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 650.h,
            child: Center(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  screen.value = value;
                },
                scrollDirection: Axis.horizontal,
                children: onbording.map((screens) {
                  return Padding(
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: screens,
                  );
                }).toList(),
              ),
            ),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: pageController,
              count: onbording.length,
              effect: const SlideEffect(
                  dotColor: Fblackcolor001, activeDotColor: Forangcolor),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: AbuttonWidget(
              text: screen.value < 2 ? "NEXT" : "GET STARTED",
              callback: () {
                screen.value++;
                screen.value < 3
                    ? pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear)
                    : context.gothrough(LoginView());
              },
            ),
          ),
          screen.value < 2
              ? Column(
                  children: [
                    SizedBox(height: 16.h),
                    AtextBwidget(
                        text: "SKIP",
                        ontap: () {
                          context.gothrough(LoginView());
                        },
                        color: Fblackcolor001),
                    SizedBox(height: 40.h),
                  ],
                )
              : SizedBox(height: 75.h)
        ],
      ),
    );
  }
}

const List<Widget> onbording = [
  OnboardingView(),
  OnboardingView1(),
  OnboardingView2()
];
