import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/view/control_view.dart';

import 'binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //initialBinding: Binding(),
      home: ContollView(),
);
  }
}
