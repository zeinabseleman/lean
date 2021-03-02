import 'package:flutter/material.dart';
import 'package:lean/core/helpers/costant.dart';
import 'package:lean/core/helpers/custom_widget/custom_text.dart';

class CustomTitel extends StatelessWidget {
  final String text;
  final double fontSize;

 // final Alignment alignment;


  CustomTitel({this.text='', this.fontSize=16});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.teal.shade100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
              child: SizedBox(height: 8,width: 8,),
              decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),),
            ),
            SizedBox(width: 20,),
            CustomText(text: text,color: Constants.secondColor,fontSize: 16,)
          ],
        ),
        ),
      ],
    );
  }
}
