import 'package:flutter/material.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/lang/app_local.dart';

import '../../costant.dart';

class UserInfo extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height;
  final double buttonHeght;
  final Function onPress;

  const UserInfo({Key key, this.text='', this.fontSize,this.height,this.buttonHeght,this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(backgroundColor: secondColor, radius: 10.0,),
        CustomText(text: text,fontSize: fontSize,color: secondColor,height: height),
        FlatButton(onPressed: onPress,
          color: secondColor,
          height: buttonHeght,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Text(
            AppLocal.of(context).getTranslated('Click'),
            style: TextStyle(color: Colors.white,
          ),
          ),
        ),
      ],
    );
  }
}
