import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/core/helpers/costant.dart';
import 'package:lean/core/helpers/custom_widget/attachment_widget.dart';
import 'package:lean/core/helpers/custom_widget/custom_button.dart';
import 'package:lean/core/helpers/custom_widget/custom_text.dart';
import 'package:lean/core/helpers/custom_widget/custom_text_titel.dart';
import 'package:lean/core/helpers/custom_widget/customcontainer.dart';
import 'package:lean/core/helpers/custom_widget/input_field.dart';
import 'package:lean/core/helpers/sized_config.dart';
import 'package:lean/core/helpers/theme.dart';
import 'package:lean/core/lang/app_local.dart';
import 'package:lean/core/validation/validator.dart';
import 'package:lean/view/user/personal_information.dart';

import '../contract_info.dart';

class CompanyInformation extends StatelessWidget {
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
          text: 'معلومات الشركه',
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputField(
                  borderColor: Constants.primaryColor,
                  ReadOnly: true,
                  validitor: valid.ValidateUser,
                  hint: "نوع المعرف",
                  widget: Icon(
                    Icons.keyboard_arrow_down,
                    size: SizeConfig.defaultSize * 5,
                    color: Constants.primaryColor,
                  ),

                  //AppLocal.of(context).getTranslated('first_name'),
                ),
                InputField(
                  hint: AppLocal.of(context).getTranslated('CRN'),
                  borderColor: Constants.primaryColor,
                ),
                InputField(
                  hint: AppLocal.of(context).getTranslated('work address'),
                  borderColor: Constants.primaryColor,
                ),
                InputField(
                  hint: AppLocal.of(context).getTranslated('notes'),
                  maxLines: 5,
                  borderColor: Constants.primaryColor,
                ),
                SizedBox(height: SizeConfig.defaultSize *2,),

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
                      text:
                          AppLocal.of(context).getTranslated('Send Attachment'),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CustomButton(
                  text: AppLocal.of(context).getTranslated('send'),
                  width: SizeConfig.defaultSize * 30,
                  onPressed: () {},
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(Contract());
                    },
                    child: CustomText(
                      color: Colors.red,
                      text: AppLocal.of(context).getTranslated('skip'),
                      fontSize: SizeConfig.defaultSize *1.8,
                      //alignment: Alignment.bottomLeft,
                    )),
              ],
            )
          ],
        ),
      ],
    ));
  }
}
