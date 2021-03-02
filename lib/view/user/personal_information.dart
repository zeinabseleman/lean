import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/core/helpers/custom_widget/custom_button.dart';
import 'package:lean/core/helpers/custom_widget/custom_text.dart';
import 'package:lean/core/helpers/custom_widget/custom_text_titel.dart';
import 'package:lean/core/helpers/custom_widget/customcontainer.dart';
import 'package:lean/core/helpers/custom_widget/input_field.dart';
import 'package:lean/core/helpers/sized_config.dart';
import 'package:lean/core/lang/app_local.dart';
import 'package:lean/core/validation/validator.dart';
import 'package:lean/view/authentication/register_screen.dart';
import 'package:lean/view/authentication/reset_password/rest_passwordScreen1.dart';
import 'package:lean/view/company/company_info.dart';

class PersonalInformationScreen extends StatelessWidget {
  final valid = Validator();
  @override
  Widget build(BuildContext context) {


    SizeConfig().init(context);
    return Scaffold(
      //  resizeToAvoidBottomInset:false ,
        body:ListView(
          children: [
            CustomContainer(
              height: SizeConfig.defaultSize *8,
              width: MediaQuery.of(context).size.width,

            ),
            SizedBox(height:  SizeConfig.defaultSize *3,),
            CustomTitel(text: 'معلومات شخصيه',),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                child: Column(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputField(
                      validitor: valid.ValidateUser,
                      hint:  AppLocal.of(context).getTranslated('first_name'),
                      //     preffxWidget: Icon(Icons.email,size: 20,),

                    ),
                    InputField(
                      hint:  AppLocal.of(context).getTranslated('last_name'),
                      //  preffxWidget: Icon(Icons.lock,size: 20,),
                      validitor: valid.ValidateUser,

                    ),
                    InputField(
                      hint:  AppLocal.of(context).getTranslated('city'),
                      //  preffxWidget: Icon(Icons.lock,size: 20,),
                      // validitor: valid.pwdValidator,

                    ),
                    InputField(
                      hint:  AppLocal.of(context).getTranslated('Email'),
                      //  preffxWidget: Icon(Icons.lock,size: 20,),
                      validitor: valid.ValidateMail,

                    ),

                    InputField(
                      // hint:  AppLocal.of(context).getTranslated('Email'),
                      //  preffxWidget: Icon(Icons.lock,size: 20,),
                      validitor: valid.Validatephone,
                      // suffxWidget: Text('966-'),
                      widget: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text('-966'),
                      ),
                    ),
                    InputField(
                      hint:  AppLocal.of(context).getTranslated('password'),
                      // preffxWidget: Icon(Icons.lock,size: 20,),
                      validitor: valid.pwdValidator,
                      //suffxWidget: Text('966-'),

                    ),
                    InputField(
                      hint:  AppLocal.of(context).getTranslated('confirm_password'),
                      // preffxWidget: Icon(Icons.lock,size: 20,),
                      validitor: valid.pwdValidator,
                      //suffxWidget: Text('966-'),

                    ),
                    SizedBox(height: SizeConfig.defaultSize *2,),




                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CustomButton(width: SizeConfig.defaultSize *30,text:AppLocal.of(context).getTranslated('send') ,onPressed: (){
                      Get.to(CompanyInformation());
                    },),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        CustomText(color: Colors.red,alignment: Alignment.topLeft,text: AppLocal.of(context).getTranslated('forget_password'),),
                      ],
                    ),

                  ],
                )

              ],
            ),
          ],
        )
    );
  }
}
