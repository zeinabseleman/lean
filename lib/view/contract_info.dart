import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/core/helpers/costant.dart';
import 'package:lean/core/helpers/custom_widget/custom_button.dart';
import 'package:lean/core/helpers/custom_widget/custom_text.dart';
import 'package:lean/core/helpers/custom_widget/custom_text_titel.dart';
import 'package:lean/core/helpers/custom_widget/customcontainer.dart';
import 'package:lean/core/helpers/custom_widget/input_field.dart';
import 'package:lean/core/helpers/sized_config.dart';
import 'package:lean/core/lang/app_local.dart';
import 'package:lean/core/validation/validator.dart';

import 'authentication/reset_password/rest_passwordScreen1.dart';
import 'company/company_info.dart';

class Contract extends StatelessWidget {
  final valid = Validator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: [
            CustomContainer(
              height: SizeConfig.defaultSize * 8,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: SizeConfig.defaultSize * 3,
            ),
            CustomTitel(
              text: 'معلومات العقد',
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputField(
                      validitor: valid.ValidateUser,
                      hint:  'تاريخ بدايه العقد',
                      //     preffxWidget: Icon(Icons.email,size: 20,),

                    ),
                    InputField(
                      hint: "تاريخ نهايه العقد",
                      //  preffxWidget: Icon(Icons.lock,size: 20,),
                      validitor: valid.ValidateUser,

                    ),
                    InputField(
                      hint:  "ايام التسليم",
                      ReadOnly: true,
                      widget: Icon(Icons.keyboard_arrow_down,size:  SizeConfig.defaultSize *5,color: Constants.primaryColor,) ,

                      //AppLocal.of(context).getTranslated('city'),
                      //  preffxWidget: Icon(Icons.lock,size: 20,),
                      // validitor: valid.pwdValidator,

                    ),
                    InputField(
                      hint:  "وقت التسليم",
                      ReadOnly: true,
                      widget: Icon(Icons.keyboard_arrow_down,size:  SizeConfig.defaultSize *5,color: Constants.primaryColor,) ,



                    ),







                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.defaultSize *2,),

            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Column(
                  children: [
                    CustomButton(width: SizeConfig.defaultSize *30,text:AppLocal.of(context).getTranslated('Create  contract') ,onPressed: (){
                      Get.to(CompanyInformation());
                    },),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Get.to(ResetPassWordScreen1());
                            },

                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: CustomText(color: Colors.red,alignment: Alignment.topLeft,text: AppLocal.of(context).getTranslated('skip'),),
                            )),
                      ],
                    )
                  ],
                )


              ],
            ),
          ],
        )
    );
  }
}
