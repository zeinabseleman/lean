
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lean/api/api_util.dart';
import 'package:lean/model/sms_respons.dart';
import 'package:lean/model/user_model.dart';

class ResetPasswordViewModel extends GetxController {
  String email;
 String code;
 String password;
 String password_confirmation;
  @override
  void onInit() {
    super.onInit();
  }
  Map<String, String> headers = {'Accept': 'Application/json'};

 Future <SmsRespons>sendConfirmationCode()async{
    Map<String, String> body = {'email': email,};
    http.Response response = await http.post(ApiUtl.confirmation_code, headers: headers, body: body);


    switch (response.statusCode) {
      case 200:
        SmsRespons smsRespons;
        try{
          var body = jsonDecode(response.body);
          print(body);
          smsRespons   = body;
        }
        catch(e){
          Get.snackbar('sorry', 'somthing error',);

        }
        return smsRespons;
        //  saveUser(user.user_id,user.api_token);


    }
  }

Future<User> forgetPassword()async{
     Map<String, String> body = {'email': email,'password':password,'password_confirmation':password_confirmation};
     http.Response response = await http.post(ApiUtl.reset_password, headers: headers, body: body);


     switch (response.statusCode) {
       case 200:
      User user;
         try{
           var body = jsonDecode(response.body);
           print(body);
           user   = body['data'];
         }
         catch(e){
           Get.snackbar('invalid account', 'please try again',);

         }
         return user;
     //  saveUser(user.user_id,user.api_token);

     }
    }
  int validpass(){
    if (password_confirmation==password){
      return 1;
    }
    else{
      return 0;
    }
  }

}