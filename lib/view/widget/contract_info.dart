import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/view/authentication/reset_pass/rest_passwordScreen1.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/custom_text_titel.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:lean/view/custom_widget/input_field.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/validator/validator.dart';
import 'package:lean/view/widget/home.dart';

import '../../costant.dart';
import 'company_info.dart';


class Contract extends StatelessWidget {
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
            child: Column(
              children: [
                CustomContainer(
                    height: SizeConfig.defaultSize *8,
                    width: SizeConfig.screenWidth
                ),
                SizedBox(height: SizeConfig.defaultSize *5,),
                CustomTitel(
                  text: 'معلومات العقد',
                ),
                SizedBox(height: SizeConfig.defaultSize *5,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0),
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
                          widget: Icon(Icons.keyboard_arrow_down,size:  SizeConfig.defaultSize *5,color: primaryColor,) ,

                          //AppLocal.of(context).getTranslated('city'),
                          //  preffxWidget: Icon(Icons.lock,size: 20,),
                          // validitor: valid.pwdValidator,

                        ),
                        InputField(
                          hint:  "وقت التسليم",
                          ReadOnly: true,
                          widget: Icon(Icons.keyboard_arrow_down,size:  SizeConfig.defaultSize *5,color: primaryColor,) ,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.defaultSize *4,),

                Column(
                  children: [
                    CustomButton(width: SizeConfig.defaultSize *30,text:AppLocal.of(context).getTranslated('Create  contract') ,onPressed: (){
                      Get.to(()=>Home());
                    },),
                    SizedBox(height: SizeConfig.defaultSize *1),
                    GestureDetector(
                        onTap: (){
                          Get.to(()=>Home());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: CustomText(color: Colors.red,alignment: Alignment.center,text: AppLocal.of(context).getTranslated('skip'),),
                        ))
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
