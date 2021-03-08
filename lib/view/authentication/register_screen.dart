
import 'package:flutter/material.dart';
import 'package:lean/costant.dart';
import 'package:lean/responsive_widget/responsewidget.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/widget/company_info.dart';
import 'package:lean/view/widget/contract_info.dart';
import 'package:lean/view/widget/myrequest.dart';
import 'package:lean/view/widget/personal_information.dart';
import 'package:lean/view/widget/user_information.dart';
import 'package:get/get.dart';


class RegisterScreen extends StatelessWidget {
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     FlatButton(onPressed: (){
              //       // Get.to(MyRequest());
              //     },
              //         color: primaryColor,
              //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              //         child: CustomText(color: Colors.white,text: 'ورقيات',fontSize: 17.0,)),
              //     FlatButton(onPressed: (){},
              //         color: primaryColor,
              //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              //         child: CustomText(color: Colors.white,text: 'فواكه',fontSize: 17.0,)),
              //     FlatButton(onPressed: (){},
              //         color: primaryColor,
              //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              //         child: CustomText(color: Colors.white,text: 'خضار',fontSize: 17.0,)),
              //     FlatButton(onPressed: (){
              //     },
              //         color: primaryColor,
              //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              //         child: CustomText(color: Colors.white,text: 'منتجاتي',fontSize: 17.0,))
              //   ],
              // ),
              Container(
                padding: EdgeInsets.only(left: 12.0,right: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      color: Colors.black,
                      text: AppLocal.of(context).getTranslated('This page is dedicated to showing you the products that have been listed'),
                      fontSize: SizeConfig.defaultSize * 2,
                      fontWeight: FontWeight.w500,
                      alignment: Alignment.center,
                    ),
                    CustomText(
                      color: Colors.black,
                      text: AppLocal.of(context).getTranslated('In your contract'),
                      fontSize: SizeConfig.defaultSize * 2,
                      fontWeight: FontWeight.w500,
                      alignment: Alignment.center,
                    ),
                    CustomText(
                      color: Colors.black,
                      text: AppLocal.of(context).getTranslated('Please create your own account and follow the necessary steps'),
                      fontSize: SizeConfig.defaultSize * 2,
                      fontWeight: FontWeight.w500,
                      alignment: Alignment.center,
                    ),
                    CustomText(
                      color: Colors.black,
                      text: AppLocal.of(context).getTranslated('To be able to create your contract and follow up on your requests'),
                      fontSize: SizeConfig.defaultSize * 2,
                      fontWeight: FontWeight.w500,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    UserInfo(
                      fontSize: SizeConfig.defaultSize * 2,
                      text: AppLocal.of(context).getTranslated('Enter personal information'),
                      buttonHeght: SizeConfig.defaultSize * 1,
                      onPress: (){
                        Get.to(() => PersonalInformationScreen());
                      },
                    ),
                    UserInfo(
                      fontSize: SizeConfig.defaultSize * 2,
                      text: AppLocal.of(context).getTranslated('Enter company information'),
                      buttonHeght: SizeConfig.defaultSize * 1,
                      onPress: (){
                        Get.to(() => CompanyInformation());
                      },
                    ),
                    UserInfo(
                      fontSize: SizeConfig.defaultSize * 2,
                      text: AppLocal.of(context).getTranslated('Enter contract information'),
                      buttonHeght: SizeConfig.defaultSize * 1,
                      onPress: (){
                        Get.to(() => Contract());
                      },
                    ),
                    UserInfo(
                      fontSize: SizeConfig.defaultSize * 2,
                      text: AppLocal.of(context).getTranslated('Enter product information'),
                      buttonHeght: SizeConfig.defaultSize * 1,
                      onPress: (){},
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
