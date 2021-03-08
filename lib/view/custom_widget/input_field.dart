import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/view/custom_widget/sized_config.dart';
import 'package:lean/view/custom_widget/theme.dart';




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
      this.preffxWidget,this.onSaved,this.validitor,this.textAlign=TextAlign.start,this.suffxWidget,this.maxLines=null,this.ReadOnly=false,this.borderColor,this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(


               // onSaved: onSaved,
                keyboardType: textInputType,
                maxLines: maxLines,

              //  keyboardType: TextInputType.multiline,
               textAlign: textAlign,
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
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(SizeConfig.defaultSize *5),
                      borderSide: BorderSide(
                          color:Colors.grey
                          //Colors.white
                      )

                  ),
                 contentPadding: EdgeInsets.only(top:SizeConfig.defaultSize*1/2+1 ,right: SizeConfig.defaultSize,bottom: SizeConfig.defaultSize*1/2),
                  prefixIcon:preffxWidget ,
              suffixIcon: widget,
                  hintText: hint,

                  hintStyle: subTitleTextStle,
                  focusedBorder: // InputBorder.none,
                  UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(SizeConfig.defaultSize *5),

                    borderSide: BorderSide(
                      color: Colors.grey,
                    //  borderColor==null? Colors.grey:borderColor,
                      width: 0,
                    ),
                  ),
                 enabledBorder://InputBorder.none,
                 UnderlineInputBorder(
                   borderRadius: BorderRadius.circular(SizeConfig.defaultSize *5),

                   borderSide: BorderSide(
                      color:  Colors.grey,
                  /*    borderColor==null?
                      Colors.grey:borderColor,*/
                      width: 0,
                    ),
                  ),
                ),

              ),
            ),

           // widget == null ? Container() : Center(child: widget),
          ],
        )
      ],
    );
  }
}
