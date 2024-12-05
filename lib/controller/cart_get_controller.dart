import 'package:flutter/material.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:get/get.dart';

class CartGetController {
  RxString editing = "EDITING ITEMS".obs;
  RxBool isediting = false.obs;
  Rx<Color> color = Fredcolor.obs;

  void changetoediti() {
    isediting.value = !isediting.value;
    isediting.value ? editing.value = "Done" : editing.value = "EDITING ITEMS";
    color.value = isediting.value ? Fgreencolor : Fredcolor;
  }
}
