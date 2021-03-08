
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:lean/api/api_util.dart';
import 'package:lean/execptions/execptions.dart';
import 'package:lean/model/user_model.dart';

class AuthViewModel extends GetxController{
   var email;
   var Password;
   var Confirm_Password;
   var Last_name;
   var first_name;
   var mobile_number;
   var message;
   var  city_id;


 /*User user=User(
   email: email,
   first_name: first_name,
   last_name: Last_name,
     password: Password
 );*/

  @override
  void onInit() {
    super.onInit();
  }

  //Future<User> register() async {
   Future<String> register() async {
    Map<String, String> headers = {'Accept': 'Application/json',


    };

    Map<String, dynamic> body = {
    /*  'first_name': first_name,
      'last_name': Last_name,
      'email': email,
      'password': Password,
      'mobile_number':mobile_number,
      'city_id':int.parse(city_id),*/
      'first_name': "first_name",
      'last_name': "Last_name",
      'email': "email@gmail.com",
      'password': "Password",
      'mobile_number':245813695,
      'city_id':1,
    };
  var test = json.encode(body);
  log(test);
print (mobile_number);
    http.Response response = await http.post("https://api.leenalkhair.com/api/auth/register", headers: headers, body: {
      /*  'first_name': first_name,
      'last_name': Last_name,
      'email': email,
      'password': Password,
      'mobile_number':mobile_number,
      'city_id':int.parse(city_id),*/
      'first_name': "first_name",
      'last_name': "Last_name",
      'email': "email@gmail.com",
      'password': "Password",
      'mobile_number':245813695,
      'city_id':'1',
    });
    log(response.body.toString());
    print(response.statusCode.toString());

    switch (response.statusCode) {
      case 200:
        var body = jsonDecode(response.body);
        message=body;
        print (message);
        log(message);
        return message;
       /* var data = body['data'];

        User user;
        try{
          user=User.fromJson(data);
          print('Token : ${user.id}');
          print(response);
          print("apic_token${user.token}");
        }
        catch(e){
          Get.snackbar('invalid account', 'please try again',);

        }
        return user;*/

      //  return User.fromJson(data);
        break;
      case 402:
        throw UnProccedEntity();
        break;
      default:
        return null;
        break;
    }
  }
  Future<User> login() async {
    print(email);
    print(Password);
    Map<String, String> headers = {'Accept': 'Application/json'};
    Map<String, String> body = {'email': email, 'password': Password};

    http.Response response = await http.post(ApiUtl.Auth_Login, headers: headers, body: body);
    print(response.statusCode);

    switch (response.statusCode) {
      case 200:
        User user;
        try{
        var body = jsonDecode(response.body);
        print(body);
        var data = body['data']['user'];
        print(data);


          user=User.fromJson(data);
          print('user.id : ${user.id}');
          print(response);
          print("apic_token${user.token}");
        }
        catch(e){
          Get.snackbar('invalid account', 'please try again',);

        }
        return user;

        //  saveUser(user.user_id,user.api_token);


        break;
      case 404:
        throw ResourceNotFound('user');
        break;
      case 301:
      case 302:
      case 303:
        throw RedirectionFound();
        break;
      case 401:
        throw LoginFaild();
        break;
      default:
        return null;
        break;

    }

  }

int validpass(){
    if (Confirm_Password==Password){
      return 1;
    }
    else{
      return 0;
    }
}


   Future<User> register2() async {
     print(email);
     print(Password);
     Map<String, String> headers = {'Accept': 'Application/json'};
     Map<String, dynamic> body = {'first_name': first_name,
       'last_name': Last_name,
       'email': email,
       'password': Password,
       'mobile_number':mobile_number,
       'city_id':'1'
       ,};

     http.Response response = await http.post(ApiUtl.Auth_Register, headers: headers, body: body);
     print(response.statusCode);

     switch (response.statusCode) {
       case 200:
         var body = jsonDecode(response.body);
         print(body);
         var data = body['data'];
         print(data);
         User user;
         try{
           user=User.fromJson(data);
           print('Token : ${user.id}');
           print(response);
           print("apic_token${user.token}");
         }
         catch(e){
           Get.snackbar('invalid account', 'please try again',);

         }
         return user;

         //  saveUser(user.user_id,user.api_token);


         break;
       case 404:
         throw ResourceNotFound('user');
         break;
       case 301:
       case 302:
       case 303:
         throw RedirectionFound();
         break;
       case 401:
         throw LoginFaild();
         break;
       default:
         return null;
         break;

     }

   }


}