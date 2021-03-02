import 'package:flutter/material.dart';
//import 'package:lean/responsive_widget/responsewidget.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;

  const CustomContainer({Key key, this.width, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade200,blurRadius: 0.5,spreadRadius:5,offset: Offset(0.0, 0.5))
            ]
        ),
        width: width,
        height: height

      );

  }
}
