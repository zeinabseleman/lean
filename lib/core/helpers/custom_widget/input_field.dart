import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../sized_config.dart';
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
  final TextInputType textInputType;

  final int  maxLines;

  const InputField(
      {
      this.controller,
      @required this.hint,
      this.widget,
      this.preffxWidget,this.onSaved,this.validitor,this.textAlign,this.suffxWidget,this.maxLines=null,this.ReadOnly=false,this.borderColor,this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 16.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.only(left: 14.0,right: 15.0),
             height: SizeConfig.defaultSize *5,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular( SizeConfig.defaultSize *5)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: textInputType,
                      maxLines: maxLines,

                    //  keyboardType: TextInputType.multiline,
                   //  textAlign:  textAlign!=null? textAlign,
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
                       contentPadding: EdgeInsets.only(top:SizeConfig.defaultSize*1/2+1 ,right: SizeConfig.defaultSize,bottom: SizeConfig.defaultSize*1/2),
                        prefixIcon:preffxWidget ,
                    suffixIcon: suffxWidget,
                        hintText: hint,

                        hintStyle: subTitleTextStle,
                        focusedBorder:  InputBorder.none,
                    /*    UnderlineInputBorder(

                          borderSide: BorderSide(
                            color: borderColor==null?
                            context.theme.backgroundColor:borderColor,
                            width: 0,
                          ),
                        ),*/
                       enabledBorder:InputBorder.none,
                       /*UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: borderColor==null?
                            context.theme.backgroundColor:borderColor,
                            width: 0,
                          ),
                        ),*/
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
