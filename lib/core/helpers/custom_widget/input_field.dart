import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme.dart';


//import 'package:task_management/ui/theme.dart';

class InputField extends StatelessWidget {

  final TextEditingController controller;
  final String hint;
  final Widget widget;
  final Widget preffxWidget;
  final Function onSaved;
  final Function validitor;
  final TextAlign textAlign;
  final Widget suffxWidget;
  final bool ReadOnly;
  final Color borderColor;

  final int  maxLines;

  const InputField(
      {
      this.controller,
      @required this.hint,
      this.widget,
      this.preffxWidget,this.onSaved,this.validitor,this.textAlign,this.suffxWidget,this.maxLines=null,this.ReadOnly=false,this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 16.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.only(left: 14.0,right: 15.0),
           //   height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      maxLines: maxLines,
                    //  keyboardType: TextInputType.multiline,
                     //textAlign:textAlign,
                      // ( textAlign!=null)??textAlign,
                      validator: validitor,
                      onSaved: onSaved,
                      autofocus: false,
                      cursorColor:
                          Colors.grey[600],
                      readOnly:ReadOnly==false?false:true,
                      //widget == null ? false : true,
                      controller: controller,
                      style: subTitleTextStle,
                      decoration: InputDecoration(
                        prefixIcon:preffxWidget ,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 0.8),
                      child: suffxWidget,
                    ),
                        hintText: hint,

                        hintStyle: subTitleTextStle,
                        focusedBorder: UnderlineInputBorder(

                          borderSide: BorderSide(
                            color: borderColor==null?
                            context.theme.backgroundColor:borderColor,
                            width: 0,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: borderColor==null?
                            context.theme.backgroundColor:borderColor,
                            width: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  widget == null ? Container() : Center(child: widget),
                ],
              ),
            )
          ],
        ));
  }
}
