import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextstyleExtension on TextStyle {
  TextStyle extrabold() {
    return copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle fontsize(int font) {
    return copyWith(fontSize: font.sp);
  }
}

extension MediaQueryExtension on BuildContext {
  double get fullHeight => MediaQuery.of(this).size.height;
  double get fullWidth => MediaQuery.of(this).size.width;
}

extension NavigatorExtension on BuildContext {
   gothrough(widget) {
    return Navigator.of(this)
        .push(MaterialPageRoute(builder: (context) => widget));
  }

  void gouthrough() {
    return Navigator.pop(this);
  }
}
