import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lean/costant.dart';
import 'package:lean/responsive_widget/responsewidget.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:get/get.dart';
import 'package:lean/view/widget/more.dart';

class Conditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:  ResponseWidget(
              builder:(context , deviceTypeModel) =>Container(
                color: Colors.grey.shade100,
                width: deviceTypeModel.screenWidth,
                height: deviceTypeModel.screenHeight,
                child: SingleChildScrollView(
                  child: Column(
                      children: [
                        CustomContainer(width:deviceTypeModel.screenWidth,height: deviceTypeModel.screenHeight*0.18 ,),
                        SizedBox(
                          height: deviceTypeModel.localHeight/17,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.0,right: 20.0),
                          width: deviceTypeModel.screenWidth,
                          height: deviceTypeModel.screenHeight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomText(color: secondColor,text: 'البنود والشروط ',fontSize: deviceTypeModel.screenHeight/28,),
                              SizedBox(
                                height: deviceTypeModel.screenHeight/17,
                              ),
                              CustomText(text: 'هذه الصفحه مخصصه لعرض المنتجات التي تم ادراجها', color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text:  ' في العقد الخاص بك',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text:  ' ف يرجي انشاء حساب خاص بك واتباع الخطوات الازمه ',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text:  ' نتمكن من انشاء عقدك ومتابعه طلباتك ',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text: 'هذه الصفحه مخصصه لعرض المنتجات التي تم ادراجها', color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text:  ' في العقد الخاص بك',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text: 'هذه الصفحه مخصصه لعرض المنتجات التي تم ادراجها', color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text:  ' في العقد الخاص بك',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text:  ' ف يرجي انشاء حساب خاص بك واتباع الخطوات الازمه ',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text:  ' نتمكن من انشاء عقدك ومتابعه طلباتك ',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text: 'هذه الصفحه مخصصه لعرض المنتجات التي تم ادراجها', color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              CustomText(text:  ' في العقد الخاص بك',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                              SizedBox(
                                height: deviceTypeModel.screenHeight/17,
                              ),
                              FlatButton(
                                  color: primaryColor,
                                  height: deviceTypeModel.screenHeight /18,
                                  minWidth: deviceTypeModel.screenWidth,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                  onPressed: (){
                                    Get.to(More());
                                  },
                                  child: CustomText(color: Colors.white,text: 'العوده ',fontSize: deviceTypeModel.localHeight/25,)
                              ),
                            ],
                          ),
                        )
                      ]
                  ),
                ),
              )
          )),
    );
  }
}
