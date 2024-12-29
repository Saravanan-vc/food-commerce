import 'package:food/controller/authenticationprovider_controller.dart';
import 'package:food/controller/cart_get_controller.dart';
import 'package:food/view/home_view/database/home_base.dart';
import 'package:food/view/login_onboarding_splash/forgot/controllers/verfiy_code.dart';
import 'package:food/widgets/timerdecrese_widgets.dart';
import 'package:get/get.dart';

class Dependisinjection {
  static getxcontrollerAll() {
    Get.put(TimerdecreseWidgets(), tag: "timer");
    Get.put(CartGetController(), tag: "cart");
    Get.put(HomeBase(), tag: "homebase");
    Get.put(AuthenticationControllerLoginScreen());
    Get.put(VerfiyCode(), tag: "verfiycode");
  }
}
