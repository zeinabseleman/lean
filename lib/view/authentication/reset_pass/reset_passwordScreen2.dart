import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/view/authentication/register_screen.dart';
import 'package:lean/view/authentication/reset_pass/reset_passwordScreen3.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/input_field.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/validator/validator.dart';

class ResetPassWordScreen2 extends StatelessWidget {
  final valid = Validator();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      color: Colors.grey.shade100,
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.jpg',
                width: SizeConfig.screenWidth * 0.6,
                height: SizeConfig.screenHeight * 0.4,
              ),
              SizedBox(
                height: SizeConfig.defaultSize * 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InputField(
                          validitor: valid.ValidateMail,
                          hint: AppLocal.of(context).getTranslated('password'),
                          preffxWidget: Icon(
                            Icons.email,
                            size: SizeConfig.defaultSize * 1.5,
                          ),
                        ),
                        InputField(
                          hint: AppLocal.of(context)
                              .getTranslated('confirm_password'),
                          preffxWidget: Icon(
                            Icons.lock,
                            size: SizeConfig.defaultSize * 1.5,
                          ),
                          validitor: valid.pwdValidator,
                        ),
                        SizedBox(
                          height: SizeConfig.defaultSize * 2,
                        ),
                        CustomButton(
                          text: AppLocal.of(context).getTranslated('login'),width: SizeConfig.screenWidth*0.8,
                          onPressed: () {
                            Get.to(()=>ResetPassWordScreen3());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )
        );
  }
}
