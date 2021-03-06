import 'package:flutter/material.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/custom_widget/theme.dart';

import '../../costant.dart';



class AttachmentWidget extends StatelessWidget {
  final Function onTap;
  final String text;

  AttachmentWidget({this.onTap,this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          //color: Colors.grey,
       //   height: 70,
          height: SizeConfig.defaultSize *10,
          width: SizeConfig.defaultSize *10,
          //60,
          decoration: BoxDecoration(
            color:Colors.grey.shade200,
              border: Border.all(
                width: 1.0,
                color: primaryColor,
              ),
              borderRadius: BorderRadius.circular(20)),
          //    color: Colors.red,
          child:Center(child: Text (text,style: subTitleTextStle,)),

        ),
      ),
    );
  }
}