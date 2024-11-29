import 'package:flutter/material.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/view/home_view.dart';
import 'package:food/view/login_onboarding_splash/locationaccess_view.dart';
import 'package:food/view/login_onboarding_splash/verifiy_view.dart';
import 'package:food/widgets/innerappmsg_widgets.dart';
import 'package:provider/provider.dart';

abstract class AuthenticationBluePrinte {
  // creating controller
  late TextEditingController emailtextediting;
  late TextEditingController passwordtextediting;
  // dispose
  void disposecontroller();
  late bool obscuretext;
}

abstract class AuthenticationBluePrinte2 {
  // ignore: unused_field
  late TextEditingController _emailtextediting;
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
        context.gothrough(const HomeView()).then(Dispose);
      }
      if (!RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(emailtext)) {
        InnerappmsgWidgets.scaffoldMessage(context);
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

class AuthenticationControllerForgetnScreen extends ChangeNotifier
    implements AuthenticationBluePrinte2 {
  @override
  TextEditingController _emailtextediting = TextEditingController();

  TextEditingController get emailtext => _emailtextediting;

  void checkthlogin(String text, BuildContext context) {
    if (RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(text)) {
      context.gothrough(const VerifiyView());
    }
  }
}

class AuthenticationControllerSignScreen extends ChangeNotifier
    implements AuthenticationBluePrinte {
  @override
  TextEditingController emailtextediting = TextEditingController();

  @override
  bool obscuretext = true;

  @override
  TextEditingController passwordtextediting = TextEditingController();

  TextEditingController nametextediting = TextEditingController();

  TextEditingController retypetextediting = TextEditingController();

  @override
  void disposecontroller() {
    emailtextediting.dispose();
    passwordtextediting.dispose();
    nametextediting.dispose();
    retypetextediting.dispose();
  }

  //rember checkout
  bool _checkout = false;
  bool get checkout => _checkout;

  //change rember checkout
  void changecheckout() {
    _checkout = !_checkout;
    notifyListeners();
  }

  bool _checkout1 = false;
  bool get checkout1 => _checkout1;

  //change rember checkout
  void changecheckout1() {
    _checkout1 = !_checkout1;
    notifyListeners();
  }

  void gohomescreen(
      String email, String password, String name, BuildContext context) {
    if (email.isNotEmpty &&
        RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(email) &&
        password.isNotEmpty &&
        password.length > 6 &&
        name.isNotEmpty) {
      context.gothrough(const LocationaccessView());
    }
  }
}
