import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/view/custom_widget/attachment_widget.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/custom_text_titel.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:lean/view/custom_widget/input_field.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/validator/validator.dart';
import 'package:lean/view/widget/personal_information.dart';

import '../../costant.dart';
import 'home.dart';

class CompanyInformation extends StatelessWidget {
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
                height: SizeConfig.defaultSize * 8,
                width: SizeConfig.screenWidth),
            SizedBox(
              height: SizeConfig.defaultSize * 5,
            ),
            CustomTitel(
              text: 'معلومات الشركه',
            ),
            SizedBox(
              height: SizeConfig.defaultSize * 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputField(
                      borderColor: primaryColor,
                      ReadOnly: true,
                      validitor: valid.ValidateUser,
                      hint: "نوع المعرف",
                      widget: Icon(
                        Icons.keyboard_arrow_down,
                        size: SizeConfig.defaultSize * 5,
                        color: primaryColor,
                      ),

                      //AppLocal.of(context).getTranslated('first_name'),
                    ),
                    InputField(
                      hint: AppLocal.of(context).getTranslated('CRN'),
                      borderColor: primaryColor,
                    ),
                    InputField(
                      hint: AppLocal.of(context).getTranslated('work address'),
                      borderColor: primaryColor,
                    ),
                    InputField(
                      hint: AppLocal.of(context).getTranslated('notes'),
                      maxLines: 5,
                      borderColor: primaryColor,
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize * 2,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: AttachmentWidget(
                          text: AppLocal.of(context).getTranslated('Send File'),
                          onTap: () {
                            Get.to(PersonalInformationScreen());
                          },
                        )),
                        SizedBox(
                          width: SizeConfig.defaultSize * 2,
                        ),
                        Expanded(
                            child: AttachmentWidget(
                          text: AppLocal.of(context)
                              .getTranslated('Send Attachment'),
                          onTap: () {
                            Get.to(PersonalInformationScreen());
                          },
                        ))
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize * 2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CustomButton(
                      text: AppLocal.of(context).getTranslated('send'),
                      width: SizeConfig.defaultSize * 30,
                      onPressed: () {
                        Get.to(() => Home());
                      },
                    ),
                    SizedBox(height: SizeConfig.defaultSize * 1),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => Home());
                        },
                        child: CustomText(
                          color: Colors.red,
                          text: AppLocal.of(context).getTranslated('skip'),
                          fontSize: SizeConfig.defaultSize * 1.8,
                          //alignment: Alignment.bottomLeft,
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
