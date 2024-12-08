import 'package:food/api/showmessage_api.dart';
import 'package:food/controller/cart_get_controller.dart';
import 'package:food/widgets/timerdecrese_widgets.dart';
import 'package:get/get.dart';

class Dependisinjection {
  static getxcontrollerAll() {
    Get.put(TimerdecreseWidgets(), tag: "timer");
    Get.put(CartGetController(), tag: "cart");
     Get.put(ShowmessageApi(),tag: "chip");
  }
}
