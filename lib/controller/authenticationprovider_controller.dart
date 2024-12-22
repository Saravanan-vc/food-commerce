import 'package:flutter/material.dart';
import 'package:food/api/callapi_api.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/util/appconst_util.dart';
import 'package:food/util/sharedperference_mdel.dart';
import 'package:food/view/home_view/home_view.dart';
import 'package:food/view/login_onboarding_splash/locationaccess_view.dart';
import 'package:food/view/login_onboarding_splash/verifiy_view.dart';
import 'package:food/widgets/innerappmsg_widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

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

// checking keyboard
  RxBool isKeybord = false.obs;
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
      SharedperferenceMdel.saveusername(name);
      debugPrint("TOUCHED THE BUTTON");
      Map<String, String> body = {
        "name": name,
        "email": email,
        "password": password
      };
      check(context, body);
    }
  }

  void check(context, Map<String, String> body) async {
    debugPrint("GOT COMPLETE HERE");
    debugPrint(body.toString());
    http.BaseResponse response =
        await CallapiApi.postapi(AppconstUtil.sginIN, body);
    if (response.statusCode == 201) {
      debugPrint('STAUSCODE IS HERE ${response.statusCode}');
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LocationaccessView()));
    } else if (response.statusCode == 300) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          elevation: 1,
          margin: EdgeInsets.all(8),
          backgroundColor: Fredcolor,
          content: Text('Already have account'),
        ),
      );
    } else {
      debugPrint('STAUSCODE IS HERE ${response.statusCode}');
    }
  }

  // checking keyboard
  RxBool isKeybord = false.obs;

}
