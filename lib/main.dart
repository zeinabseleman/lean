import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:lean/view/authentication/login_screen.dart';
import 'package:lean/view/authentication/welcome_screen.dart';
import 'package:lean/view/control_view.dart';
import 'package:lean/view/lang/app_local.dart';
import 'package:lean/view/widget/company_info.dart';
import 'package:lean/view/widget/contract_info.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Locale locale = Locale('ar', '');
  runApp(DevicePreview(builder:(context) => MyApp(locale)));
}

class MyApp extends StatefulWidget {
  final Locale locale;

  MyApp(this.locale);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: DevicePreview.appBuilder,

      localizationsDelegates: [
        AppLocal.delegate,

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar',''),
        Locale('en',''),
      ],
      locale:widget.locale,
      localeResolutionCallback: (currentLocale,supportedLocales){
        if (currentLocale!=null){
          for(Locale locale in supportedLocales){
            if(currentLocale.languageCode==locale.languageCode){
              return currentLocale;
            }
          }
        }
        return supportedLocales.first;
      }
      ,
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      //LoginScreen(),
   //  ContollView(),

    );
  }
}

