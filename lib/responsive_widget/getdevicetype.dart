

import 'package:flutter/cupertino.dart';
import 'package:lean/responsive_widget/devicetype.dart';

DeviceTpe getDeviceType(MediaQueryData mediaQueryData){
  double width = 0.0;
  Orientation orientation = mediaQueryData.orientation;
  if(orientation == Orientation.landscape){
    width = mediaQueryData.size.height;
  }else{
    width = mediaQueryData.size.width;
  }
  if(width >=600){
    return DeviceTpe.Tablet;
  }
  if(width >=950){
    return DeviceTpe.Desktop;
  }
  return DeviceTpe.Mobile;
}