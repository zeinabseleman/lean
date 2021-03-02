
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
    return Container(
      height: SizeConfig.defaultSize *5,
     // width:cc ,
      width:(width==null)?SizeConfig.defaultSize * 60: width ,
      child: FlatButton(

        child: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: CustomText(
      text:text ,
            alignment: Alignment.center,
             color: Colors.white,
            fontSize:  SizeConfig.defaultSize *2,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize *5)
        ),
        padding: EdgeInsets.all(10),
        onPressed: onPressed,
        color:Constants.primaryColor,
        //AppColors.primaryColor,

      ),
    );
  }
}
