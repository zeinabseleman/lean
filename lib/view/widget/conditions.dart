import 'package:flutter/material.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:get/get.dart';
import 'package:lean/view/widget/more.dart';
import '../../costant.dart';

class TermsAndConditions extends StatelessWidget {
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
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Container(
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomText(
                        alignment: Alignment.centerRight,
                        text:AppLocal.of(context).getTranslated('Terms and conditions'),
                        color: secondColor,
                        fontSize: SizeConfig.defaultSize*2.5,
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize *3,
                      ),
                      CustomText(
                        color: Colors.black,
                        text: AppLocal.of(context).getTranslated('This page is dedicated to showing you the products that have been listed'),
                        fontSize: SizeConfig.defaultSize * 2,
                        fontWeight: FontWeight.w500,
                        alignment: Alignment.centerRight,
                      ),
                      CustomText(
                        color: Colors.black,
                        text: AppLocal.of(context).getTranslated('In your contract'),
                        fontSize: SizeConfig.defaultSize * 2,
                        fontWeight: FontWeight.w500,
                        alignment: Alignment.centerRight,
                      ),
                      CustomText(
                        color: Colors.black,
                        text: AppLocal.of(context).getTranslated('Please create your own account and follow the necessary steps'),
                        fontSize: SizeConfig.defaultSize * 2,
                        fontWeight: FontWeight.w500,
                        alignment: Alignment.centerRight,
                      ),
                      CustomText(
                        color: Colors.black,
                        text: AppLocal.of(context).getTranslated('To be able to create your contract and follow up on your requests'),
                        fontSize: SizeConfig.defaultSize * 2,
                        fontWeight: FontWeight.w500,
                        alignment: Alignment.centerRight,
                      ),
                      CustomText(
                        color: Colors.black,
                        text: AppLocal.of(context).getTranslated('This page is dedicated to showing you the products that have been listed'),
                        fontSize: SizeConfig.defaultSize * 2,
                        fontWeight: FontWeight.w500,
                        alignment: Alignment.centerRight,
                      ),
                      CustomText(
                        color: Colors.black,
                        text: AppLocal.of(context).getTranslated('In your contract'),
                        fontSize: SizeConfig.defaultSize * 2,
                        fontWeight: FontWeight.w500,
                        alignment: Alignment.centerRight,
                      ),
                      CustomText(
                        color: Colors.black,
                        text: AppLocal.of(context).getTranslated('Please create your own account and follow the necessary steps'),
                        fontSize: SizeConfig.defaultSize * 2,
                        fontWeight: FontWeight.w500,
                        alignment: Alignment.centerRight,
                      ),
                      CustomText(
                        color: Colors.black,
                        text: AppLocal.of(context).getTranslated('To be able to create your contract and follow up on your requests'),
                        fontSize: SizeConfig.defaultSize * 2,
                        fontWeight: FontWeight.w500,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(
                        height: SizeConfig.defaultSize *3,
                      ),
                      CustomButton(
                        text: AppLocal.of(context).getTranslated('back'),
                        onPressed: (){
                          Get.to(()=>More());
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
