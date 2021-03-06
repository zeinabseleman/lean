import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/view/authentication/login_screen.dart';
import 'package:lean/view/authentication/register_screen.dart';
import 'package:lean/view/authentication/reset_pass/rest_passwordScreen1.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/input_field.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/validator/validator.dart';
import 'package:lean/view/widget/personal_information.dart';


class WelcomeScreen extends StatelessWidget {
  final valid = Validator();
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      // resizeToAvoidBottomInset:false ,
        body: Container(
          color: Colors.grey.shade100,
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.jpg',width: SizeConfig.screenWidth*0.6,height: SizeConfig.screenHeight*0.4,),
              SizedBox(height: SizeConfig.defaultSize *5.5,),
              CustomButton(text:AppLocal.of(context).getTranslated('login') ,width: SizeConfig.screenWidth*0.8,onPressed: (){
                Get.to(()=>LoginScreen());
              },),
              SizedBox(height:SizeConfig.defaultSize *2 ,),
              CustomButton(text:AppLocal.of(context).getTranslated('register') ,width: SizeConfig.screenWidth*0.8,onPressed: (){
                Get.to(()=>PersonalInformationScreen());
              },),
            ],
          ),
        )
    );
  }
}
