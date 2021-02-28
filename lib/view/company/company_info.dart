
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/core/helpers/costant.dart';
import 'package:lean/core/helpers/custom_widget/attachment_widget.dart';
import 'package:lean/core/helpers/custom_widget/input_field.dart';
import 'package:lean/core/helpers/sized_config.dart';
import 'package:lean/core/helpers/theme.dart';
import 'package:lean/core/lang/app_local.dart';
import 'package:lean/core/validation/validator.dart';
import 'package:lean/view/user/personal_information.dart';
class CompanyInformation extends StatelessWidget {
  final valid = Validator();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(
                borderColor:  Constants.primaryColor,
                ReadOnly: true,
                validitor: valid.ValidateUser,
                hint: "نوع المعرف" ,
                widget:Icon(Icons.keyboard_arrow_down,size: 20,) ,

                //AppLocal.of(context).getTranslated('first_name'),
                
              ),
              InputField(hint: 'رقم السجل التجارى ', borderColor: Constants.primaryColor,),
              InputField(hint: 'عنوان العمل  ', borderColor:  Constants.primaryColor,),
              InputField(hint: AppLocal.of(context).getTranslated('notes'),maxLines: 5, borderColor:  Constants.primaryColor,),


              Row(
                children: [
                  Expanded(
                    child: AttachmentWidget(
                      text: 'ارفاق ملفات',
                      onTap: (){
                      Get.to(PersonalInformationScreen());
                    },)
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize *2,
                  ),
                  Expanded(
                    child:  AttachmentWidget(
                      text: 'ارفاق مستندات ',
                      onTap: (){
                        Get.to(PersonalInformationScreen());
                      },)
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
