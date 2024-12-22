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

  static void saveusername(String username) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('username', username);
  }
   static Future<String?> getusername() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     return sharedPreferences.getString("username");
  }
}
