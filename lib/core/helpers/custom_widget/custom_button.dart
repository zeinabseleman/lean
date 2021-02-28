
import 'package:flutter/material.dart';

import '../costant.dart';
import '../sized_config.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final double width;


  CustomButton({this.onPressed, this.text,this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
       // height: 40,
       // width:SizeConfig.defaultSize * 60 ,
        width:(width==null)?SizeConfig.defaultSize * 60: width ,
        child: FlatButton(

          child: CustomText(
        text:text ,
            alignment: Alignment.center,
             color: Colors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          padding: EdgeInsets.all(10),
          onPressed: onPressed,
          color:Constants.primaryColor,
          //AppColors.primaryColor,

        ),
      ),
    );
  }
}
