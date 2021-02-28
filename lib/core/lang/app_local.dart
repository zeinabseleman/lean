import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppLocal{
  Locale locale;
  Map<String,String>_loadedLocalizedValues;

  AppLocal(this.locale);
  static AppLocal of(BuildContext context){
   return Localizations.of(context,AppLocal);
  }
Future loadlanguage()async{
  //  Map<String,dynamic>_loadedValue=await
  String _langFile=await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
  Map<String,dynamic>_loadedValue=jsonDecode(_langFile);
  _loadedLocalizedValues=_loadedValue.map((key,value)=>MapEntry(key, value.toString()));
}
String getTranslated(String key){
    return _loadedLocalizedValues[key];
}
static const LocalizationsDelegate<AppLocal>delegate=_AppLocalDelegate();

}

class _AppLocalDelegate extends LocalizationsDelegate<AppLocal>{
  const _AppLocalDelegate();
  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return ["en","ar"].contains(locale.languageCode);
  }

  @override
  Future<AppLocal> load(Locale locale)async {
    // TODO: implement load
    AppLocal appLocal=AppLocal(locale);
    await appLocal.loadlanguage();
    return appLocal;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocal> old) {
    // TODO: implement shouldReload
    return false;
  }

}