import 'dart:async';
// import 'package:commerce/view/amazon_view.dart';
// import 'package:commerce/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/animatioins/transation_animations.dart';
import 'package:food/ui/images_ui.dart';
import 'package:food/view/login_onboarding_splash/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => //const HomeView(),
              const OnboardingView3(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              splashImage,
              width: 121.w,
            ),
          ),
          TransationAnimations.TransationAnimations1(context),
        ],
      ),
    );
  }
}
