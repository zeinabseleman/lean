
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:lean/api/api_util.dart';
import 'package:lean/execptions/execptions.dart';
import 'package:lean/model/user_model.dart';

class AuthViewModel extends GetxController{
   String email;
    String Password;
   String Confirm_Password;
  String Last_name;
    String first_name;
    int mobile_number;

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

  Future<User> register() async {
    Map<String, String> headers = {'Accept': 'Application/json',


    };

    Map<String, dynamic> body = {
      'first_name': first_name,
      'last_name': Last_name,
      'email': email,
      'password': Password,
      'mobile_number':mobile_number,
      'city_id':'1'
    };

    http.Response response = await http.post(ApiUtl.Auth_Register, headers: headers, body: body);

    switch (response.statusCode) {
      case 200:
        var body = jsonDecode(response.body);
        var data = body['data'];

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