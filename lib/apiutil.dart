import 'dart:convert';

class APIUtil {
  static APIUtil apiUtil;
  /*
   * This method used to initialize BMG profile util
   */
  static APIUtil getApiUtil() {
    if (apiUtil == null) {
      apiUtil = new APIUtil();
    }
    return apiUtil;
  }

  String getSignUpRequestBody(
      String userName, String email, String phoneNumber) {
    Map<String, Object> signUpMap = new Map<String, Object>();
    signUpMap['username'] = userName;
    signUpMap['mobile_no'] = phoneNumber;
    signUpMap['email'] = email;
    String requestBody = json.encode(signUpMap);
    return requestBody;
  }

  String sendOtpRequestBody(String phoneNumber) {
    Map<String, Object> signUpMap = new Map<String, Object>();
    signUpMap['mobile_no'] = phoneNumber;
    String requestBody = json.encode(signUpMap);
    return requestBody;
  }
}
