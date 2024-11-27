import 'package:flutter/material.dart';

class TimerdecreseWidgets extends ChangeNotifier {
  int time = 60;
  timer() {
    if (time > 0) {
      time--;
      notifyListeners();
    }
  }

  FocusNode focusNode = FocusNode();
}
