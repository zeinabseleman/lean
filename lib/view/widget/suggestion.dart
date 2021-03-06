import 'package:flutter/material.dart';
import 'package:lean/view/custom_widget/custom_botton.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:get/get.dart';
import 'package:lean/view/widget/more.dart';
import '../../costant.dart';

class Suggestion extends StatelessWidget {
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
                height: SizeConfig.defaultSize * 3,
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
              child: Container(
                color: Colors.white,
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight*0.7,
                child: Column(
                  children: [
                    Container(
                      color: primaryColor,
                      height: SizeConfig.defaultSize*7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.arrow_drop_down,color: Colors.white,),
                          CustomText(color: Colors.white,
                            text: AppLocal.of(context).getTranslated('send your suggestion and feedback'),
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                      child: Container(
                        width: SizeConfig.defaultSize*15,
                        height: SizeConfig.defaultSize*4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.shade400
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}

