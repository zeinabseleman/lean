
import 'package:flutter/material.dart';
import 'package:lean/costant.dart';
import 'package:lean/responsive_widget/responsewidget.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:lean/view/widget/myrequest.dart';
import 'package:lean/view/widget/user_information.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
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
                        height: deviceTypeModel.screenHeight/17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(onPressed: (){
                           // Get.to(MyRequest());
                          },
                              color: primaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child: CustomText(color: Colors.white,text: 'ورقيات',fontSize: 17.0,)),
                          FlatButton(onPressed: (){},
                              color: primaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child: CustomText(color: Colors.white,text: 'فواكه',fontSize: 17.0,)),
                          FlatButton(onPressed: (){},
                              color: primaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child: CustomText(color: Colors.white,text: 'خضار',fontSize: 17.0,)),
                          FlatButton(onPressed: (){
                          },
                              color: primaryColor,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child: CustomText(color: Colors.white,text: 'منتجاتي',fontSize: 17.0,))
                        ],
                      ),
                      SizedBox(
                          height: deviceTypeModel.screenHeight/18
                      ),
                      Column(
                        children: [
                          CustomText(text: 'هذه الصفحه مخصصه لعرض المنتجات التي تم ادراجها', color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                          CustomText(text:  ' في العقد الخاص بك',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                          CustomText(text:  ' ف يرجي انشاء حساب خاص بك واتباع الخطوات الازمه ',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,),
                          CustomText(text:  ' نتمكن من انشاء عقدك ومتابعه طلباتك ',color: Colors.black, fontSize: deviceTypeModel.screenHeight*0.025,)
                        ],
                      ),
                      SizedBox(
                          height: deviceTypeModel.screenHeight/18
                      ),
                      Container(
                        // width: deviceTypeModel.screenWidth/2,
                        // height: deviceTypeModel.screenHeight/20,
                        // height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            UserInfo(
                              fontSize: deviceTypeModel.screenHeight*0.025,
                              text: 'دخال المعلومات الشخصيه',
                            ),
                            UserInfo(
                              fontSize: deviceTypeModel.screenHeight*0.025,
                              text: 'دخال معلومات الشركه',
                            ),
                            UserInfo(
                              fontSize: deviceTypeModel.screenHeight*0.025,
                              text: 'دخال معلومات العقد',
                            ),
                            UserInfo(
                              fontSize: deviceTypeModel.screenHeight*0.025,
                              text: 'دخال معلومات المنتجات',
                            )
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //     FlatButton(onPressed: (){},
                            //       color: secondColor,
                            //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            //       child: Text('اضغط'),
                            //     ),
                            //     CustomText(text: 'ادخال المعلومات الشخصيه',fontSize: deviceTypeModel.screenHeight*0.025,color: secondColor,),
                            //     CircleAvatar(backgroundColor: secondColor, radius: 10.0,),
                            //   ],
                            // )
                          ],
                        ),
                      )
                      // ListView.builder(
                      //   itemCount: names.length,
                      //   itemBuilder: (context , index){
                      //     return Container(
                      //       color: Colors.red,
                      //      // width: deviceTypeModel.screenWidth,
                      //       //height: deviceTypeModel.screenHeight / 20,
                      //     );
                      //   },
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
