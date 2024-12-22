import 'package:flutter/material.dart';
import 'package:food/ui/colors_ui.dart';

class SwithccolorWidgets {
  static Color correctcolor(int index) {
    switch (index) {
      case 1:
        return Fredcolor;
      case 2:
        return FlighBlucolor;
      case 3:
        return Fblackcolor;
      case 4:
        return Fpink;
      case 5:
        return Fpurple;
    }
    return FlighBcolor;
  }
}
