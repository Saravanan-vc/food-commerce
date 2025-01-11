import 'dart:convert';

import 'package:food/util/appconst_util.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CallapiApi extends GetxService {
  static Future<http.Response> fetchapi(String url) async {
    final String call = AppconstUtil.baseurl + url;
    http.Response response = await http.get(Uri.parse(call));
    return response;
  }

  static Future<http.Response> postapi(
      String url, Map<String, String> body) async {
    final String call = AppconstUtil.baseurl + url;
    http.Response response = await http.post(Uri.parse(call),
        headers: {
          'Content-Type':
              'application/json', // Ensure content-type is application/json
        },
        body: jsonEncode(body));
    return response;
  }

  static Future<http.Response> paramsapi(String url) async {
    String passurl = "${AppconstUtil.baseurl}$url";
    http.Response response = await http.get(Uri.parse(passurl));
    return response;
  }
}
