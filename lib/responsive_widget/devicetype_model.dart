
import 'package:flutter/cupertino.dart';
import 'package:lean/responsive_widget/devicetype.dart';

class DeviceTypeModel{

  final Orientation orientation;
  final DeviceTpe deviceTpe;
  final double screenWidth;
  final double screenHeight;
  final double localwidth;
  final double localHeight;

  DeviceTypeModel({this.orientation, this.deviceTpe, this.screenWidth, this.screenHeight, this.localwidth, this.localHeight});

}