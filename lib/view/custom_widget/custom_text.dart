import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text ;
  final double fontSize;
  final Color color;


  const CustomText({Key key, this.text='', this.fontSize, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
