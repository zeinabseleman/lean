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
              padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 20.0),
              child: Container(
                color: Colors.white,
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight*0.9,
                child: Column(
                  children: [
                    Container(
                      color: primaryColor,
                      height: SizeConfig.defaultSize*8,
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
                    Container(child:
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 30.0),
                        child: Column(
                          children: [
                            Container(
                              width: SizeConfig.defaultSize*35,
                              height: SizeConfig.defaultSize*27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.grey.shade200
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CustomText(
                                      text: AppLocal.of(context).getTranslated('To add new products to the current contract'),
                                      color: Colors.black,
                                      alignment: Alignment.centerRight,
                                    ),
                                    CustomText(
                                      text: AppLocal.of(context).getTranslated('Please go to the home page then'),
                                      color: Colors.black,
                                      alignment: Alignment.centerRight,
                                    ),
                                    CustomText(
                                      text: AppLocal.of(context).getTranslated('Choose products from the existing items'),
                                      color: Colors.black,
                                      alignment: Alignment.centerRight,
                                    ),
                                    CustomText(
                                      text: AppLocal.of(context).getTranslated('(Vegetables, leafy fruits), then add the quantities'),
                                      color: Colors.black,
                                      alignment: Alignment.centerRight,
                                    ),
                                    CustomText(
                                      text: AppLocal.of(context).getTranslated('For every product'),
                                      color: Colors.black,
                                      alignment: Alignment.centerRight,
                                    ),
                                    CustomText(
                                      text: AppLocal.of(context).getTranslated('You will receive a message to add the products to your contract'),
                                      color: Colors.black,
                                      alignment: Alignment.centerRight,
                                    ),
                                    CustomText(
                                      text: AppLocal.of(context).getTranslated('Thank you for contacting us'),
                                      color: Colors.black,
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize * 10,
                            ),
                            Divider(
                                height: SizeConfig.defaultSize*0.2,
                                color: Colors.black54
                            ),
                            SizedBox(
                              height: SizeConfig.defaultSize * 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomText(
                                  text: 'Type Message',
                                  color: Colors.grey[600],
                                ),
                                SizedBox(
                                  width: SizeConfig.defaultSize * 1,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  width: SizeConfig.defaultSize*5,
                                  height: SizeConfig.defaultSize*5,
                                  child: Icon(Icons.messenger,color: Colors.white,),
                                ),

                              ],
                            )
                          ],
                        ),
                      )

                      )

                  ],
                ),
              ),
            ),
              CustomButton(
                text: AppLocal.of(context).getTranslated('back'),
               width: SizeConfig.defaultSize*30,
            onPressed: (){
                  Get.to(()=>More());
            },
              )
            ],
          ),
        ),
      ),
    );
  }
}

