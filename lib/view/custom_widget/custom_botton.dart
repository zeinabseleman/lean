
import 'package:flutter/material.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';


import '../../costant.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final double width;
  final double textHeight;
  final Alignment alignment;
  final double sizeBoxWidth;


  CustomButton({this.onPressed, this.text='',this.width,this.textHeight,this.alignment=Alignment.center,this.sizeBoxWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize *5,
      // width:cc ,
      width:(width==null)?SizeConfig.defaultSize * 60: width ,
      child: FlatButton(
        child: CustomText(
              text:text,
              alignment: alignment,
              color: Colors.white,
              fontSize:  SizeConfig.defaultSize *2,
              height: textHeight,
            ),

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize *5)
        ),
        padding: EdgeInsets.all(10),
        onPressed: onPressed,
        color:primaryColor,
        //AppColors.primaryColor,

      ),
    );
  }
}
