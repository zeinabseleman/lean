

import 'package:flutter/material.dart';
import 'package:lean/responsive_widget/getdevicetype.dart';

import 'devicetype_model.dart';
class ResponseWidget extends StatelessWidget {
  final Widget Function(BuildContext context , DeviceTypeModel deviceTypeModel) builder;

  const ResponseWidget({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context ,constrains ) {
          var mediaQueryData = MediaQuery.of(context);
          var deviceTypeModel = DeviceTypeModel(
             orientation: mediaQueryData.orientation,
            deviceTpe: getDeviceType(mediaQueryData),
             screenWidth: mediaQueryData.size.width,
            screenHeight: mediaQueryData.size.height,
            localwidth: constrains.maxWidth,
            localHeight: constrains.maxHeight
          );
          return builder(context , deviceTypeModel);
        }

    );
  }
}
