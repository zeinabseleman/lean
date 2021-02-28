import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:lean/view/authentication/login_screen.dart';


import 'core/lang/app_local.dart';





void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Locale locale=Locale('ar','');
//  Locale locale=Locale('en','');

  runApp(MyApp(locale));
}

class MyApp extends StatefulWidget {
  final Locale locale;

  MyApp(this.locale);
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),

    );
  }
}


