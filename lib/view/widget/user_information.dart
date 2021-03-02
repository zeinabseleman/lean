import 'package:flutter/material.dart';
import 'package:lean/view/custom_widget/custom_text.dart';

import '../../costant.dart';

class UserInfo extends StatelessWidget {
  final String text;
  final double fontSize;

  const UserInfo({Key key, this.text, this.fontSize}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlatButton(onPressed: (){},
          color: secondColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Text('اضغط',style: TextStyle(color: Colors.white),),
        ),
        CustomText(text: 'ادخال المعلومات الشخصيه',fontSize: fontSize,color: secondColor,height: 1.0,),
        CircleAvatar(backgroundColor: secondColor, radius: 10.0,),
      ],
    );
  }
}
