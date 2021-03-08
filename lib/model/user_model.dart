

import 'package:lean/execptions/execptions.dart';

class User{
 String first_name,last_name,email,token,password,business_info,status,mobile_number;
 int id,otp;
  User({this.first_name, this.last_name,this.password ,this.email,this.token,this.id,this.business_info,this.mobile_number,this.otp,this.status});
  User.fromJson(Map <String,dynamic>jsonObject){
    this.id=jsonObject['id'];
    this.first_name=jsonObject['first_name'];
    this.last_name=jsonObject['last_name'];
    this.email=jsonObject['email'];
    this.token=jsonObject['api_token'];
    this.password=jsonObject['password'];
    this.status=jsonObject['status'];
    this.otp=jsonObject['otp'];
    this.mobile_number=jsonObject['mobile_number'];
    this.business_info=jsonObject['business_info'];


  }
  Map<String, dynamic> toJson(){
   /* final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name']=first_name;
    data['last_name']=last_name;
    data['email']=email;
    data['api_token']=api_token;
    data['user_id']=user_id;
    return data;*/
    return {
      'first_name':first_name,
      'last_name':last_name,
      'email':email,
      'token':token,
      'status':status,
      'otp':otp,
      'mobile_number':mobile_number,
      'business_info':business_info,
      'password':password,
    };


  }
}