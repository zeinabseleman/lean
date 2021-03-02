import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text ;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final double height;
  final Alignment alignment;

  const CustomText({Key key, this.text='', this.fontSize, this.color,this.fontWeight,this.height,this.alignment=Alignment.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
           fontWeight: fontWeight,
          height: height,
        ),
      ),
    );
  }
}
