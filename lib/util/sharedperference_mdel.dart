import 'package:shared_preferences/shared_preferences.dart';

class SharedperferenceMdel {
  static Future<bool> getinitalpermisiion() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final bool permision = sharedPreferences.getBool("access") ?? false;
    return permision;
  }

  static void setinitalpermisiion() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("access", true);
  }

  static void setinitalpermisiion2() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("access", false);
  }

  static void saveusername(String username) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('username', username);
  }

  static Future<String?> getusername() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString("username");
  }

  static Future<void> stedata(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }

  static Future<String?> gettext(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }
}
