import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/constains/dependisinjection/dependisinjection.dart';
import 'package:food/controller/authenticationprovider_controller.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/view/login_onboarding_splash/splash_view.dart';
import 'package:provider/provider.dart';

void main() {
  Dependisinjection.getxcontrollerAll();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (context, _) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
                create: (_) => AuthenticationControllerLoginScreen()),
            ChangeNotifierProvider(
                create: (_) => AuthenticationControllerForgetnScreen()),
            ChangeNotifierProvider(
                create: (_) => AuthenticationControllerSignScreen())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: Fwhitcolor),
            home: const SplashView(),
          ),
        );
      },
    );
  }
}
