import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lean/costant.dart';
import 'package:lean/responsive_widget/responsewidget.dart';
import 'package:lean/view/custom_widget/custom_text.dart';
import 'package:lean/view/custom_widget/customcontainer.dart';
import 'package:lean/view/widget/home.dart';
import 'package:lean/view/widget/user_information.dart';
import 'package:lean/view_model/home_view_model.dart';

class ContollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) =>Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }
  Widget _bottomNavigationBar(){
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.white,fontSize: 15.0),
        selectedLabelStyle: TextStyle(color: Colors.white,fontSize: 15.0),
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
         selectedItemColor: Colors.white,
         unselectedItemColor: Colors.white,
         showUnselectedLabels: true,
          elevation: 0.0,
          currentIndex: controller.selectedValue,
          iconSize: 30.0,
          showSelectedLabels: true,
          onTap: (value){
          controller.selectCurentScreen(value);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu,size: 30.0,),
              label: 'اكثر',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined,size: 30.0),
                label: 'الملف الشخصي'
            ),
            BottomNavigationBarItem(
                 icon: Icon(Icons.request_page_outlined,size: 30.0),
                label: 'طلباتي'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,size: 30.0),
                  label: 'الرئيسيه',
              // backgroundColor: primaryColor
            ),

          ]
      ),
    );
  }
}
