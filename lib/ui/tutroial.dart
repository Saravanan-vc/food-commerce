import 'package:flutter/material.dart';
import 'package:food/ui/colors_ui.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class Tutroial {
  late TutorialCoachMark tutorialCoachMark;
  GlobalKey globalKey = GlobalKey();
  GlobalKey lobalKey = GlobalKey();
  GlobalKey obalKey = GlobalKey();

  List<TargetFocus> tragetS = [];

  void getdata(context) {
    assall();
    tutorialCoachMark = TutorialCoachMark(
      targets: tragetS,
      colorShadow: Colors.black,
      textSkip: "SKIP",
      paddingFocus: 2,
      opacityShadow: 0.8,
    )..show(context: context);
  }

  void assall() {
    tragetS.add(TargetFocus(
      identify: globalKey,
      keyTarget: globalKey,
      contents: [
        TargetContent(
            align: ContentAlign.right,
            builder: (context, controller) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Fwhitcolor),
                child: Center(
                    child: Column(
                  children: [
                    const Text("Abb Bar is here"),
                    TextButton(
                        onPressed: () {
                          controller.next();
                        },
                        child: const Text("next"))
                  ],
                )),
              );
            })
      ],
    ));
    tragetS.add(TargetFocus(
      identify: lobalKey,
      keyTarget: lobalKey,
      contents: [
        TargetContent(
            align: ContentAlign.left,
            builder: (context, controller) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Fwhitcolor),
                child: Center(
                    child: Column(
                  children: [
                    const Text("Abb Bar is here"),
                    TextButton(
                        onPressed: () {
                          controller.next();
                        },
                        child: const Text("next"))
                  ],
                )),
              );
            })
      ],
    ));
    tragetS.add(TargetFocus(
      identify: obalKey,
      keyTarget: obalKey,
      shape: ShapeLightFocus.RRect,
      radius: 20,
      contents: [
        TargetContent(
            align: ContentAlign.bottom,
            builder: (context, controller) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Fwhitcolor),
                child: Center(
                    child: Column(
                  children: [
                    const Text("Abb Bar is here"),
                    TextButton(
                        onPressed: () {
                          controller.next();
                        },
                        child: const Text("next"))
                  ],
                )),
              );
            })
      ],
    ));
  }
}
