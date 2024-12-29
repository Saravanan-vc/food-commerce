import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food/api/callapi_api.dart';
import 'package:food/ui/extension/overall_extension.dart';
import 'package:food/ui/mesager.dart';
import 'package:food/util/appconst_util.dart';
import 'package:food/view/login_onboarding_splash/login/login_view.dart';
import 'package:food/view/login_onboarding_splash/sigin_view.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class VerfiyCode extends GetxController {
  TextEditingController email = TextEditingController();
  Future<void> checkcode(String code, BuildContext context) async {
    if (code.isEmpty) {
      Scafoldmessager.messagerCall(false, context, "code is empty");
      return;
    }
    try {
      String url = "${AppconstUtil.checkIT}$code";
      http.Response response = await CallapiApi.paramsapi(url);
      var content = jsonDecode(response.body);
      if (response.statusCode == 201) {
        Scafoldmessager.messagerCall(true, context, content['msg']);
        email.text = content['email'];
        context.gothrough(const SiginView(
          forget: true,
        ));
      } else {
        Scafoldmessager.messagerCall(false, context, content['msg']);
      }
    } catch (e) {
      Scafoldmessager.messagerCall(false, context, "something went wrong");
    }
  }

  Future<void> updatepassword(
      String email, String password, BuildContext context) async {
    Map<String, String> body = {"email": email, "password": password};
    try {
      http.Response response =
          await CallapiApi.postapi(AppconstUtil.updatePW, body);
      var content = jsonDecode(response.body);
      if (response.statusCode == 201) {
        Scafoldmessager.messagerCall(true, context, content['msg']);
        context.gothrough(LoginView());
      } else {
        Scafoldmessager.messagerCall(false, context, content['msg']);
      }
    } catch (e) {
      debugPrint(e.toString());
      Scafoldmessager.messagerCall(false, context, "something went wrong");
    }
  }
}
