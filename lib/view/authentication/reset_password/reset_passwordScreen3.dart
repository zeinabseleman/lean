
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/core/helpers/costant.dart';
import 'package:lean/core/helpers/custom_widget/custom_button.dart';
import 'package:lean/core/helpers/custom_widget/custom_text.dart';
import 'package:lean/core/helpers/custom_widget/input_field.dart';
import 'package:lean/core/helpers/theme.dart';
import 'package:lean/core/lang/app_local.dart';
import 'package:lean/core/validation/validator.dart';

import '../../user/personal_information.dart';
class ResetPassWordScreen3 extends StatelessWidget {
  final valid=Validator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            height: 200,
            width: 400,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 15,left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(text: AppLocal.of(context).getTranslated('verfication'),alignment: Alignment.topRight,color: Constants.primaryColor,),
                  CustomText(text: '+966541616111',alignment: Alignment.topRight,color: Constants.primaryColor,),

                  InputField(
                    textAlign: TextAlign.center,
                    hint: AppLocal.of(context).getTranslated('Confirmation code'),
                    validitor: valid.ValidateMail,

                  ),
                  CustomButton(text: AppLocal.of(context).getTranslated('Confirm'), onPressed:(){
                    Get.to(PersonalInformationScreen());

                  },)

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}