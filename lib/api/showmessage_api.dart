import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ShowmessageApi extends GetxController {
  final String showimage = "https://saravanan-vc.github.io/shoe_api/firstindex";
  final String fakeapi = "https://fakestoreapi.com/products";
    RxList foodchip = [].obs;

  Future fetchingchip() async {
    var response = await http
        .get(Uri.parse("https://saravanan-vc.github.io/food_api/chi"));
    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      foodchip.value = body;
      debugPrint("${foodchip[0]['category']}");
    } else {
      debugPrint("not right");
    }
  }

  Future fetchpopmesage() async {
    try {
      var response = await http.get(
          Uri.parse("https://saravanan-vc.github.io/food_api/offerscreen"));
      if (response.statusCode == 200) {
        assert(response.statusCode == 200,
            " :::::::::::::::::::>error in fetching pop msg ");
        var body = json.decode(response.body);
        return body['image'];
      } else {
        debugPrint("not comming");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
