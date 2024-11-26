import 'package:commerce/ui/extension/overall_extension.dart';
import 'package:commerce/view/home_view.dart';
import 'package:flutter/cupertino.dart';

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

  // checking they are not null
  void chekinglogin(
      String emailtext, String passwordtext, BuildContext context) {
    try {
      if (emailtext.isNotEmpty && passwordtext.isNotEmpty) {
        context.gothrough(const HomeView());
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
