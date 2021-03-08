import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/input_field.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/validator/validator.dart';
import 'package:lean/view/widget/personal_information.dart';

import '../../../costant.dart';
import '../../control_view.dart';

class ResetPassWordScreen3 extends StatelessWidget {
  final valid = Validator();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body:
        Container(
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
                'assets/images/lean_logo.jpeg',
                width: SizeConfig.screenWidth * 0.6,
                height: SizeConfig.screenHeight * 0.4,
              ),
              SizedBox(
                height: SizeConfig.defaultSize * 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: Container(
                  height: SizeConfig.defaultSize * 25,
                  width: SizeConfig.defaultSize * 40,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        SizeConfig.defaultSize * 5),
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 32.0,bottom: 15.0),
                          child: Container(
                            child: Column(
                              children: [
                                CustomText(
                                  text: AppLocal.of(context).getTranslated('verfication'),
                                  alignment: Alignment.centerRight,
                                  color: primaryColor,),
                                CustomText(text: '966541616111+',
                                  alignment: Alignment.centerRight,
                                  color: primaryColor,),

                              ],
                            )
                          ),
                        ),

                        InputField(
                          textAlign: TextAlign.center,
                          hint: AppLocal.of(context).getTranslated(
                              'Confirmation code'),
                          validitor: valid.ValidateMail,

                        ),
                        SizedBox(height: SizeConfig.defaultSize * 2,),
                        CustomButton(
                          text: AppLocal.of(context).getTranslated('Confirm'),
                          onPressed: () {
                            Get.to(()=>ContollView());
                          },)

                      ],
                    ),
                  ),
                ),
              )
                ]
            ),
          ),
        )
        )
    );
  }
}
