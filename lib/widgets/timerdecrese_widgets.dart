import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TimerdecreseWidgets extends GetxController {
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  RxBool isbool = false.obs;
  RxInt time = 60.obs;
  void timer() {
    Timer.periodic(const Duration(seconds: 1), (_) {
      if (time.value > 0) {
        time.value--;
      }
    });
  }

  String makecode() {
    return "${code1.text}${code2.text}${code3.text}${code4.text}";
  }

  void clear() {
    code1.clear();
    code2.clear();
    code3.clear();
    code4.clear();
  }

  FocusNode focusNode = FocusNode();
  RxInt currentIndex = 0.obs;
}
