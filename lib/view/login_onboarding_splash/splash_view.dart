import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/animatioins/transation_animations.dart';
import 'package:food/util/sharedperference_mdel.dart';
import 'package:food/ui/images_ui.dart';
// import 'package:food/view/detail_screen/addressview_detail.dart';
import 'package:food/view/home_view/home_view.dart';
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
   
    bool permission = false;
    Timer(const Duration(seconds: 3), () async {
      permission = await SharedperferenceMdel.getinitalpermisiion();
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => //const HomeView(),
                permission ? const HomeView() : const OnboardingView3(),
          ),
        );
      }
    });

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      ShowDailogWidget.firstmessage(context);
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
