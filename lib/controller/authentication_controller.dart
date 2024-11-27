import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/home_view.dart';

abstract class AuthenticationBluePrinte {
  // creating controller
  late TextEditingController emailtextediting;
  late TextEditingController passwordtextediting;
  // dispose
  void disposecontroller();
  late bool obscuretext;
}

class AuthenticationControllerLoginScreen extends ChangeNotifier
    implements AuthenticationBluePrinte {
  // used blue print
  @override
  TextEditingController emailtextediting = TextEditingController();
  @override
  TextEditingController passwordtextediting = TextEditingController();
  @override
  void disposecontroller() {
    emailtextediting.dispose();
    passwordtextediting.dispose();
  }

  @override
  bool obscuretext = true;

  //rember checkout
  bool _checkout = false;
  bool get checkout => _checkout;

  //change rember checkout
  void changecheckout() {
    _checkout = !_checkout;
    notifyListeners();
  }

  // checking they are not null
  void chekinglogin(
      String emailtext, String passwordtext, BuildContext context) {
    try {
      if (emailtext.isNotEmpty &&
          passwordtext.isNotEmpty &&
          RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(emailtext)) {
        context.gothrough(const HomeView());
      }
      if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(emailtext)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            padding: const EdgeInsets.all(0),
            content: Container(
                
                color: Fwhitcolor,
                child: const Text(
                  "The mail or not good",
                  style: TextStyle(color: Forangcolor),
                )),
            margin: EdgeInsets.only(bottom: 0.90.sh, left: 10.w, right: 10.w),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //changing obscutext
  void changingobscutext() {
    obscuretext = !obscuretext;
    notifyListeners();
  }
}
