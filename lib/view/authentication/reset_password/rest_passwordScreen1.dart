import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/core/helpers/custom_widget/custom_button.dart';
import 'package:lean/core/helpers/custom_widget/custom_text.dart';
import 'package:lean/core/helpers/custom_widget/input_field.dart';
import 'package:lean/core/helpers/sized_config.dart';
import 'package:lean/core/lang/app_local.dart';
import 'package:lean/core/validation/validator.dart';
import 'package:lean/view/authentication/register_screen.dart';
import 'package:lean/view/authentication/reset_password/reset_passwordScreen2.dart';

class ResetPassWordScreen1 extends StatelessWidget {
  final valid = Validator();
  @override
  Widget build(BuildContext context) {


    SizeConfig().init(context);
    return Scaffold(
     //   resizeToAvoidBottomInset:false ,
        body:ListView(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.jpg'),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InputField(
                            textInputType: TextInputType.emailAddress,
                            validitor: valid.ValidateMail,
                            hint:  AppLocal.of(context).getTranslated('Email'),
                            preffxWidget: Icon(Icons.email,size:SizeConfig.defaultSize *1.5,),

                          ),
                 SizedBox(height:SizeConfig.defaultSize *2 ,),
                          CustomButton(text:AppLocal.of(context).getTranslated('send') ,onPressed: (){
                            Get.to(ResetPassWordScreen2());
                          },),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
