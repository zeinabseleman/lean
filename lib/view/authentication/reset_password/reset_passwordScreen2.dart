import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/core/helpers/custom_widget/custom_button.dart';
import 'package:lean/core/helpers/custom_widget/custom_text.dart';
import 'package:lean/core/helpers/custom_widget/input_field.dart';
import 'package:lean/core/helpers/sized_config.dart';
import 'package:lean/core/lang/app_local.dart';
import 'package:lean/core/validation/validator.dart';
import 'package:lean/view/authentication/register_screen.dart';
import 'package:lean/view/authentication/reset_password/reset_passwordScreen3.dart';

class ResetPassWordScreen2 extends StatelessWidget {
  final valid = Validator();
  @override
  Widget build(BuildContext context) {


    SizeConfig().init(context);
    return Scaffold(
        resizeToAvoidBottomInset:false ,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputField(
                    validitor: valid.ValidateMail,
                    hint:  AppLocal.of(context).getTranslated('password'),
                    preffxWidget: Icon(Icons.email,size: 20,),

                  ),
                  InputField(
                    hint:  AppLocal.of(context).getTranslated('confirm_password'),
                    preffxWidget: Icon(Icons.lock,size: 20,),
                    validitor: valid.pwdValidator,

                  ),
                  CustomButton(text:AppLocal.of(context).getTranslated('login') ,onPressed: (){
                    Get.to(ResetPassWordScreen3());
                  },),


                ],
              ),
            ),
          ),
        )
    );
  }
}