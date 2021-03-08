import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lean/responsive_widget/responsewidget.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;

  const CustomContainer({Key key, this.width, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0),bottomRight: Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade200,blurRadius: 0.3,spreadRadius:5,offset: Offset(0.0, 0.5)),
            ]
        ),
        width: width,
        height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/lean_logo2.jpeg',fit:BoxFit.fill ,),
          Image.asset('assets/images/lean_secondlogo.jpeg'),
        ],
      ),

      );

  }
}
