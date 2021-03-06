import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:lean/view/custom_widget/sized_config.dart';




//const primaryClr = purpleClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Colors.grey[800];

class Themes {


}

TextStyle get headingTextStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black),
    //Get.isDarkMode ? Colors.white : Colors.black)

  );
}

TextStyle get subHeadingTextStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.grey),

  );
}

TextStyle get titleTextStle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black),

  );
}

TextStyle get subTitleTextStle {
  return GoogleFonts.lato(
    textStyle: TextStyle(

        fontSize: SizeConfig.defaultSize *2,
        color: Colors.grey[700]),

  );
}

TextStyle get bodyTextStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color:Colors.black),

  );
}

TextStyle get body2TextStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color:Colors.grey[600]),

  );
}
