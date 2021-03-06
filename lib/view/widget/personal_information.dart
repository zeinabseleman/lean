import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/model/user_model.dart';
import 'package:lean/view/authentication/register_screen.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/custom_text_titel.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:lean/view/custom_widget/input_field.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/validator/validator.dart';
import 'package:lean/view/widget/home.dart';
import 'package:lean/view_model/auth_view_model.dart';

import '../control_view.dart';
import 'company_info.dart';

class PersonalInformationScreen extends StatelessWidget {
  final valid = Validator();
  static  GlobalKey<FormState>_globalKey=GlobalKey();

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      //  resizeToAvoidBottomInset:false ,
        body:Container(
          color: Colors.grey.shade100,
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: SingleChildScrollView(
            child:  GetBuilder<AuthViewModel>(
              init: AuthViewModel(),
              builder:(controller)
              => Column(
                children: [
                  CustomContainer(
                    height: SizeConfig.defaultSize *8,
                    width: SizeConfig.screenWidth
                  ),
                  SizedBox(height: SizeConfig.defaultSize *5,),
                  CustomTitel(text: 'معلومات شخصيه',),
                  SizedBox(height: SizeConfig.defaultSize *5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Form(
                      key: _globalKey,
                      child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InputField(
                            validitor: valid.ValidateUser,
                            hint:  AppLocal.of(context).getTranslated('first_name'),
                            onSaved: (value){
                              controller.first_name=value;

                            },
                            //     preffxWidget: Icon(Icons.email,size: 20,),

                          ),
                          SizedBox(height:SizeConfig.defaultSize *2 ,),

                          InputField(
                            hint:  AppLocal.of(context).getTranslated('last_name'),
                            //  preffxWidget: Icon(Icons.lock,size: 20,),
                            validitor: valid.ValidateUser,
                            onSaved: (value){
                              controller.Last_name=value;

                            },

                          ),
                          SizedBox(height:SizeConfig.defaultSize *2 ,),

                          InputField(
                            hint:  AppLocal.of(context).getTranslated('city'),
                            //  preffxWidget: Icon(Icons.lock,size: 20,),
                            // validitor: valid.pwdValidator,


                          ),
                          SizedBox(height:SizeConfig.defaultSize *2 ,),

                          InputField(
                            hint:  AppLocal.of(context).getTranslated('Email'),
                            //  preffxWidget: Icon(Icons.lock,size: 20,),
                            validitor: valid.ValidateMail,
                            onSaved: (value){
                              controller.email=value;

                            },

                          ),
                          SizedBox(height:SizeConfig.defaultSize *2 ,),

                          InputField(
                            onSaved: (value){
                              controller.mobile_number=value;

                            },
                            // hint:  AppLocal.of(context).getTranslated('Email'),
                            //  preffxWidget: Icon(Icons.lock,size: 20,),
                            validitor: valid.Validatephone,
                            // suffxWidget: Text('966-'),
                            widget: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text('-966'),

                            ),
                          ),
                          SizedBox(height:SizeConfig.defaultSize *2 ,),

                          InputField(
                            hint:  AppLocal.of(context).getTranslated('password'),
                            // preffxWidget: Icon(Icons.lock,size: 20,),
                            validitor: valid.pwdValidator,
                            //suffxWidget: Text('966-'),
                            onSaved: (value){
                              controller.Password=value;

                            },
                          ),
                          SizedBox(height:SizeConfig.defaultSize *2 ,),

                          InputField(
                            hint:  AppLocal.of(context).getTranslated('confirm_password'),
                            // preffxWidget: Icon(Icons.lock,size: 20,),
                            validitor: valid.pwdValidator,
                            //suffxWidget: Text('966-'),
                            onSaved: (value){
                              controller.Confirm_Password=value;

                            },
                          ),
                          SizedBox(height: SizeConfig.defaultSize *4,),

                        ],
                      ),
                    ),
                  ),
                  Container(
                   // width: SizeConfig.screenWidth*5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButton(width: SizeConfig.defaultSize *30,text:AppLocal.of(context).getTranslated('send') ,onPressed: ()async{

                          _globalKey.currentState.save();
                          if(_globalKey.currentState.validate()){
                            User user=   await  controller.register();
                            print(user);
                            if(user.id!=null){

                              Get.to(()=>ContollView());    }
                          /*  else{
                              Get.to(()=>ResetPassWordScreen1());
                            }*/
                          }



                        },),
                        SizedBox(height: SizeConfig.defaultSize *1),
                        GestureDetector(
                            onTap: (){
                              Get.to(()=>Home());
                            },
                            child: CustomText(color: Colors.red,alignment: Alignment.center,text: AppLocal.of(context).getTranslated('back to home'),)),

                      ],
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