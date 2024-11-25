import 'package:commerce/ui/colors_ui.dart';
import 'package:commerce/ui/extension/overall_extension.dart';
import 'package:commerce/ui/images_ui.dart';
import 'package:commerce/widgets/button_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowDailogWidget {
  static offerdilog(context) {
    return showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          backgroundColor: Fblackcolor001,
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 380,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  gradient: LinearGradient(
                      colors: [Fyellcolor, Forangcolor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      Container(
                        width: 260,
                        height: 150,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(offerImage),
                                fit: BoxFit.fitWidth)),
                        child: Center(
                          child: Text(
                            "Hurry Offers!",
                            style: const TextStyle(color: Fwhitcolor)
                                .fontsize(41)
                                .extrabold(),
                          ),
                        ),
                      ),
                      Text(
                        '#1243CD2',
                        style: const TextStyle(color: Fwhitcolor)
                            .fontsize(30)
                            .extrabold(),
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        "Use the cupon get 25% discount",
                        style: const TextStyle(color: Fwhitcolor)
                            .fontsize(17)
                            .extrabold(),
                      ),
                      SizedBox(height: 20.h),
                      AouterButton(text: "GO", callback: () {}),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -10,
                right: -10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.sp),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Fyellcolor),
                    child: const Icon(
                      CupertinoIcons.clear_thick,
                      color: Forangcolor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
