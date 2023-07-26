import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage = 'en' ;
  ThemeMode appTheme = ThemeMode.light ;

  void changeLanguage(String newLanguage)async{
    if(newLanguage == appLanguage)return ;
    appLanguage = newLanguage ;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', newLanguage);

  }


  void changeTheme(ThemeMode newMode)async{
    if(newMode == appTheme)return;
    appTheme = newMode ;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', appTheme == ThemeMode.light ? 'light' : 'dark');

  }
}

