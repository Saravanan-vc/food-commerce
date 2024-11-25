import 'dart:async';

import 'package:commerce/ui/images_ui.dart';
// import 'package:commerce/view/amazon_view.dart';
import 'package:commerce/view/home_view.dart';
// import 'package:commerce/view/login_onboarding_splash/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SplashView1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          splashImage,
          width: 121.w,
        ),
      ),
    );
  }
}

// second splash screen
class SplashView1 extends StatefulWidget {
  const SplashView1({super.key});

  @override
  State<SplashView1> createState() => _SplashView1State();
}

class _SplashView1State extends State<SplashView1> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
           builder: (context) => const //OnboardingView()
              HomeView()
              ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight,
          ),
          Center(
            child: Image.asset(
              splashImage,
              width: 121.w,
            ),
          ),
          Positioned(
            bottom: -MediaQuery.sizeOf(context).height * 0.14,
            right: -MediaQuery.sizeOf(context).width * 0.3,
            child: Image.asset(
              splashImage1,
              height: 292.h,
              width: 295.w,
            ),
          ),
        ],
      ),
    );
  }
}
