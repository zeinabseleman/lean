
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        width: screenWidth,
        height: screenHeight,
            child: Column(
              children: [
                CustomContainer(width:screenWidth,height: screenHeight*0.18),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 37.0
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
                          height: 40.0
                      ),
                      CustomText(text: 'هذه الصفحه مخصصه لعرض المنتجات التي تم ادراجها', color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.w800,height: 2.0,),
                      CustomText(text:  ' في العقد الخاص بك',color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.w800,height: 2.0),
                      CustomText(text:  '  يرجي انشاء حساب خاص بك واتباع الخطوات الازمه ',color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.w800,height: 2.0),
                      CustomText(text:  ' نتمكن من انشاء عقدك ومتابعه طلباتك ',color: Colors.black, fontSize:15.0,fontWeight: FontWeight.w800,height: 2.0),
                      SizedBox(
                          height: 30.0
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 15.0,right: 17.0),
                        // width: screenWidth*0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            UserInfo(
                              fontSize: 20.0,
                              text: 'دخال المعلومات الشخصيه',
                            ),
                            UserInfo(
                              fontSize:  20.0,
                              text: 'دخال معلومات الشركه',
                            ),
                            UserInfo(
                              fontSize:  20.0,
                              text: 'دخال معلومات العقد',
                            ),
                            UserInfo(
                              fontSize:  20.0,
                              text: 'دخال معلومات المنتجات',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
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
          ),
    );
  }
}
