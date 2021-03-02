import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/core/helpers/custom_widget/custom_button.dart';
import 'package:lean/core/helpers/custom_widget/custom_text.dart';
import 'package:lean/core/helpers/custom_widget/input_field.dart';
import 'package:lean/core/helpers/sized_config.dart';
import 'package:lean/core/lang/app_local.dart';
import 'package:lean/core/validation/validator.dart';
import 'package:lean/view/authentication/register_screen.dart';
import 'package:lean/view/authentication/reset_password/rest_passwordScreen1.dart';

class LoginScreen extends StatelessWidget {
  final valid = Validator();
  @override
  Widget build(BuildContext context) {


    SizeConfig().init(context);
    return Scaffold(
     // resizeToAvoidBottomInset:false ,
      body: ListView(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Image.asset('assets/images/logo.jpg'),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Form(

                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InputField(
                           textInputType: TextInputType.emailAddress,
                            validitor: valid.ValidateMail,
                            hint:  AppLocal.of(context).getTranslated('Email'),
                            preffxWidget: Icon(Icons.email,size: SizeConfig.defaultSize *1.5,),

                          ),
                          InputField(
                         //   textInputType: TextInputType.,
                            hint:  AppLocal.of(context).getTranslated('password'),
                            preffxWidget: Icon(Icons.lock,size: SizeConfig.defaultSize *1.5,),
                            validitor: valid.pwdValidator,

                          ),
                          SizedBox(height: SizeConfig.defaultSize *2,),
                          CustomButton(text:AppLocal.of(context).getTranslated('login') ,onPressed: (){
                            Get.to(RegisterScreen());
                          },),
                          GestureDetector(
                              onTap: (){
                                Get.to(ResetPassWordScreen1());
                              },

                              child: CustomText(color: Colors.red,alignment: Alignment.topLeft,text: AppLocal.of(context).getTranslated('forget_password'),fontSize: SizeConfig.defaultSize *2,))

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],

      )
    );
  }
}
