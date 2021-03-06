import 'package:flutter/material.dart';
import 'package:lean/costant.dart';
import 'package:lean/responsive_widget/responsewidget.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:get/get.dart';
import 'package:lean/view/custom_widget/flatbutton_info.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/widget/aboutapp.dart';
import 'package:lean/view/widget/conditions.dart';
import 'package:lean/view/widget/policy.dart';
import 'package:lean/view/widget/suggestion.dart';
class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.grey.shade100,
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: SingleChildScrollView(
          child: Column(
              children: [
                CustomContainer(
                    height: SizeConfig.defaultSize * 8,
                    width: SizeConfig.screenWidth),
                SizedBox(
                  height: SizeConfig.defaultSize * 5,
                ),

               Container(
                 padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 20.0),
                 child: Column(
                   //mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     FlatbuttonInfo(
                       text:AppLocal.of(context).getTranslated('About the application'),
                       alignment: Alignment.centerRight,
                       sizeBoxWidth: 10.0,
                       onPressed: (){
                         Get.to(()=>AboutApp());
                       },
                     ),
                     SizedBox(
                         height: SizeConfig.defaultSize*1.5
                     ),
                     FlatbuttonInfo(
                       text:AppLocal.of(context).getTranslated('Privacy policy'),
                       alignment: Alignment.centerRight,
                       sizeBoxWidth: 10.0,
                       onPressed: (){
                         Get.to(()=>PrivacyPolicy());
                       },
                     ),
                     SizedBox(
                         height: SizeConfig.defaultSize*1.5
                     ),
                     FlatbuttonInfo(
                       text:AppLocal.of(context).getTranslated('Terms and conditions'),
                       alignment: Alignment.centerRight,
                       sizeBoxWidth: 10.0,
                       onPressed: (){
                         Get.to(()=>TermsAndConditions());
                       },
                     ),
                     SizedBox(
                         height: SizeConfig.defaultSize*1.5
                     ),
                     FlatbuttonInfo(
                       text:AppLocal.of(context).getTranslated('Contact via email'),
                       alignment: Alignment.centerRight,
                       sizeBoxWidth: 10.0,
                       onPressed: (){
                         Get.to(()=>AboutApp());
                       },
                     ),
                     SizedBox(
                         height: SizeConfig.defaultSize*1.5
                     ),
                     FlatbuttonInfo(
                       text:AppLocal.of(context).getTranslated('call us'),
                       alignment: Alignment.centerRight,
                       sizeBoxWidth: 10.0,
                       onPressed: (){
                         Get.to(()=>AboutApp());
                       },
                     ),
                     SizedBox(
                         height: SizeConfig.defaultSize*1.5
                     ),
                     FlatbuttonInfo(
                       text:AppLocal.of(context).getTranslated('Change the language to English'),
                       alignment: Alignment.centerRight,
                       sizeBoxWidth: 10.0,
                       onPressed: (){
                         Get.to(()=>AboutApp());
                       },
                     ),
                     SizedBox(
                       height: SizeConfig.defaultSize*1.5
                     ),
                     FlatbuttonInfo(
                       text:AppLocal.of(context).getTranslated('Suggestions and notes'),
                       alignment: Alignment.centerRight,
                       sizeBoxWidth: 10.0,
                       onPressed: (){
                         Get.to(()=>Suggestion());
                       },
                     ),
                     SizedBox(
                         height: SizeConfig.defaultSize*1.5
                     ),
                     Container(
                       padding: EdgeInsets.only(right: 18.0),
                       decoration: BoxDecoration(
                           border: Border.all(color: primaryColor),
                           borderRadius: BorderRadius.circular(20.0)
                       ),
                       child: Row(
                         children: [
                           Icon(Icons.login_sharp,color: secondColor,size: SizeConfig.defaultSize*4),
                           SizedBox(
                               width: SizeConfig.defaultSize*1,
                           ),
                           CustomText(text:AppLocal.of(context).getTranslated('Logout'),color: Colors.grey[900],fontSize: SizeConfig.defaultSize*2,
                             alignment: Alignment.topRight,
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
               ),


              ]
          ),
        ),
      ),
    );
  }
}
