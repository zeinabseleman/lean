import 'package:flutter/material.dart';
import 'package:lean/costant.dart';
import 'package:lean/responsive_widget/responsewidget.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:get/get.dart';
import 'package:lean/view/widget/aboutapp.dart';
import 'package:lean/view/widget/conditions.dart';
import 'package:lean/view/widget/policy.dart';
class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ResponseWidget(
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
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0,right: 20.0,bottom: 30.0),
                   child: Column(
                     children: [
                       FlatButton(
                           color: primaryColor,
                           height: deviceTypeModel.screenHeight /18,
                           minWidth: deviceTypeModel.screenWidth,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           onPressed: (){
                             Get.to(AboutApp());
                           },
                           child: CustomText(color: Colors.white,text: 'حول التطبيق',fontSize: deviceTypeModel.localHeight/25,)
                       ),
                       SizedBox(
                         height: deviceTypeModel.screenHeight/60,
                       ),
                       FlatButton(
                           color: primaryColor,
                           height: deviceTypeModel.screenHeight /18,
                           minWidth: deviceTypeModel.screenWidth,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           onPressed: (){
                              Get.to(Policy());
                           }, child: CustomText(color: Colors.white,text: 'سياسه الخصويه',fontSize: deviceTypeModel.localHeight/25,)
                       ),
                       SizedBox(
                         height: deviceTypeModel.screenHeight/60,
                       ),
                       FlatButton(
                           color: primaryColor,
                           height: deviceTypeModel.screenHeight /18,
                           minWidth: deviceTypeModel.screenWidth,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           onPressed: (){
                             Get.to(Conditions());
                           }, child: CustomText(color: Colors.white,text: 'البنود والشروط',fontSize: deviceTypeModel.localHeight/25,)
                       ),
                       SizedBox(
                         height: deviceTypeModel.screenHeight/60,
                       ),
                       FlatButton(
                           color: primaryColor,
                           height: deviceTypeModel.screenHeight /18,
                           minWidth: deviceTypeModel.screenWidth,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           onPressed: (){}, child: CustomText(color: Colors.white,text: ' تواصل عبر البريد الالكتروني',fontSize: deviceTypeModel.localHeight/25,)
                       ),
                       SizedBox(
                         height: deviceTypeModel.screenHeight/60,
                       ),
                       FlatButton(
                           color: primaryColor,
                           height: deviceTypeModel.screenHeight /18,
                           minWidth: deviceTypeModel.screenWidth,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           onPressed: (){}, child: CustomText(color: Colors.white,text: 'اتصل بنا',fontSize: deviceTypeModel.localHeight/25,)
                       ),
                       SizedBox(
                         height: deviceTypeModel.screenHeight/60,
                       ),
                       FlatButton(
                           color: primaryColor,
                           height: deviceTypeModel.screenHeight /18,
                           minWidth: deviceTypeModel.screenWidth,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           onPressed: (){}, child: CustomText(color: Colors.white,text: 'تغيير اللغه الي الانجليزيه',fontSize: deviceTypeModel.localHeight/25,)
                       ),
                       SizedBox(
                         height: deviceTypeModel.screenHeight/60,
                       ),
                       FlatButton(
                           color: primaryColor,
                           height: deviceTypeModel.screenHeight /18,
                           minWidth: deviceTypeModel.screenWidth,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                           onPressed: (){}, child: CustomText(color: Colors.white,text: 'اقتراحات و ملاحظات',fontSize: deviceTypeModel.localHeight/25,)
                       ),
                       SizedBox(
                         height: deviceTypeModel.screenHeight/30,
                       ),
                       Container(
                         height: deviceTypeModel.screenHeight /18,
                         width: deviceTypeModel.screenWidth,
                         decoration: BoxDecoration(
                             border: Border.all(color: primaryColor),
                             borderRadius: BorderRadius.circular(20.0)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(right: 15.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               CustomText(text: 'تسجيل الخروج',color: Colors.grey[900],fontSize: 15.0,),
                               Icon(Icons.login_sharp,color: secondColor,size: 30.0,),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 )

                ]
              ),
            ),

          )
        )
      ),
    );
  }
}
