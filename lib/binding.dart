
import 'package:get/get.dart';
import 'package:lean/view/control_view.dart';
import 'package:lean/view_model/auth_view_model.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
   // Get.lazyPut(() => ContollView());
    Get.lazyPut(() => AuthViewModel());
  }

}