
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/view/widget/home.dart';
import 'package:lean/view/widget/more.dart';
import 'package:lean/view/widget/myrequest.dart';
import 'package:lean/view/widget/account.dart';

class HomeViewModel extends GetxController{
  int  _selectedValue = 0;
  get selectedValue => _selectedValue ;
  Widget _currentScreen = Home();
  get currentScreen => _currentScreen ;

  void selectCurentScreen(int selected){
    _selectedValue = selected;
    switch(selected){
      case 0 : {
        _currentScreen = More();
        break;
      }

      case 1 : {
        _currentScreen = Account();
        break;
      }

      case 2 : {
        _currentScreen = MyRequest();
        break ;
      }

      case 3 :{
        _currentScreen = Home();
        break;
      }
    }
    update();
  }
}