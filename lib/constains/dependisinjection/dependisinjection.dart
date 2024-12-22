import 'package:food/controller/cart_get_controller.dart';
import 'package:food/view/home_view/database/home_base.dart';
import 'package:food/widgets/timerdecrese_widgets.dart';
import 'package:get/get.dart';

class Dependisinjection {
  static getxcontrollerAll() {
    Get.put(TimerdecreseWidgets(), tag: "timer");
    Get.put(CartGetController(), tag: "cart");
    Get.put(HomeBase(), tag: "homebase");
  }
}
