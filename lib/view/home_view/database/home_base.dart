import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:food/api/callapi_api.dart';
import 'package:food/util/appconst_util.dart';
import 'package:food/util/sharedperference_mdel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeBase extends GetxController {
  RxString? name = "".obs;
  RxList restraunt = [].obs;
  RxList carsoul = [].obs;
  RxList subcategry = [].obs;

  Future getRestraunt() async {
    http.Response response = await CallapiApi.fetchapi(AppconstUtil.restarunt);
    var body = json.decode(response.body);
    if (response.statusCode == 201) {
      restraunt.assignAll(body['gernerat']);
    }
  }

  Future getCarsoul() async {
    http.Response response =
        await CallapiApi.fetchapi(AppconstUtil.carsoulImage);
    var body = json.decode(response.body);
    debugPrint(
        "==Home Base=== ${response.statusCode} ===>${body['listofimages'][0]['image'].length}");
    if (response.statusCode == 201) {
      carsoul.assignAll(body['listofimages'][0]['image']);
      if (kDebugMode) debugPrint('$carsoul');
    }
  }

  void getusername() async {
    String? vname = await SharedperferenceMdel.getusername();
    if (vname != null) {
      name = vname.obs;
    }
  }

  @override
  void onInit() {
    getusername();
    getCarsoul();
    getRestraunt();
    getCarsoul();
    super.onInit();
  }
}
