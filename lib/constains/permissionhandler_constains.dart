import 'package:flutter/material.dart';
import 'package:food/view/home_view/home_view.dart';
import 'package:food/widgets/showdialog_widget.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionhandlerConstains {
  Future<void> locationPermission(context) async {
    try {
      await Permission.location.request();
      await Permission.location.isGranted
          ? Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            )
          : ShowDailogWidget.locationdilog(context);
    } catch (e) {
      null;
    }
  }
}
