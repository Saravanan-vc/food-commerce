class AppconstUtil {
  static String baseurl = "http://192.168.1.5:3005";
  // 192.168.1.5
  // post method api
  static String sginIN = "/api/v1/sign";
  static String loginIN = "/api/v1/login";
  static String forgetIN = "/api/v1/forget";
  static String checkIT = "/api/v1/checkcode/";
  static String updatePW = "/api/v1/updatepassword";
  static String cartADD = "/api/v1/add/cart";
  static String cartINCRE =
      "/api/v1/cart/increment/"; //want to [params id number]
  static String cartDECRE =
      "/api/v1/cart/decrement/"; //want to [params id number]
  static String favroutADD = "/api/v1/favrouit";

  // get method api
  static String restarunt = "/api/v1/restarunt";
  static String cartALL = "/api/v1/cart";
  static String favroutALL = "/api/v1/favrouit/all";
  static String popMessage = "/api/v1/imagepop";
  static String carsoulImage = "/api/v1/carsoulimage";
}
