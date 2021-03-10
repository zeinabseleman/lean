import 'package:flutter/cupertino.dart';

class SmsRespons{
  bool status;
  String code;
  String  mobile_number;
  String message;
  SmsRespons({ this.mobile_number,this.message,this.code,this.status});
  SmsRespons.fromJson(Map <String,dynamic>jsonObject){
    this.mobile_number=jsonObject['mobile_number'];
    this.code=jsonObject['code'];
    this.status=jsonObject['status'];
    this.message=jsonObject['message'];

  }

}