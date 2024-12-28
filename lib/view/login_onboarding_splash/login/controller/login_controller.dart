import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food/api/callapi_api.dart';
import 'package:food/ui/mesager.dart';
import 'package:food/util/appconst_util.dart';
import 'package:food/util/sharedperference_mdel.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class Logincontroller extends GetxController {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Future<void> loginCredintal(String email, String password) async {
    Map<String, String> body = {
      "email": email,
      "password": password,
    };
    http.Response response =
        await CallapiApi.postapi(AppconstUtil.loginIN, body);
    var msg = jsonDecode(response.body);
    if (response.statusCode == 350) {
      Scafoldmessager.messagerCall(false, Get.context!, msg['msg']);
    }
    if (response.statusCode == 220) {
      Scafoldmessager.messagerCall(false, Get.context!, msg['msg']);
    } else {
      if (response.statusCode == 320) {
        Scafoldmessager.messagerCall(false, Get.context!, msg['msg']);
      } else if (response.statusCode == 201) {
        SharedperferenceMdel.setinitalpermisiion();
        Scafoldmessager.messagerCall(true, Get.context!, msg['msg']);
      } else {
        Scafoldmessager.messagerCall(false, Get.context!, msg['msg']);
      }
    }
  }


}
