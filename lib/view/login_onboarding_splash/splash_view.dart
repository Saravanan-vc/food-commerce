import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/animatioins/transation_animations.dart';
import 'package:food/ui/images_ui.dart';
// import 'package:food/view/detail_screen/addressview_detail.dart';
import 'package:food/view/home_view.dart';
import 'package:food/view/login_onboarding_splash/onboarding_view.dart';
// import 'package:food/view/detail_screen/profilediting_detail.dart';
// import 'package:food/view/home_view.dart';
import 'package:food/widgets/showdialog_widget.dart';
import 'package:food/widgets/timerdecrese_widgets.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  TimerdecreseWidgets timerdecreseWidgets =
      Get.find<TimerdecreseWidgets>(tag: "timer");
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => //const HomeView(),
              timerdecreseWidgets.isbool.value
                  ? const HomeView()
                  : const OnboardingView3(),
        ),
      );
      if (timerdecreseWidgets.isbool.value) {
        Future.delayed(const Duration(milliseconds: 2), () {
          if (!mounted) return;
          ShowDailogWidget.firstmessage(context);
        });
      }
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
