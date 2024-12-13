import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimerdecreseWidgets extends GetxController {
  RxBool isbool = false.obs;
  RxInt time = 60.obs;
  timer() {
    if (time.value > 0) {
      time.value--;
    }
  }

  FocusNode focusNode = FocusNode();
  RxInt currentIndex = 0.obs;
}
