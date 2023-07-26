
import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/home/quran/sura_details_screen.dart';
import 'package:islami_app/home/tasbeh/tasbeh_tab.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppConfigProvider(),
      child: MyApp()));

}
class MyApp extends StatelessWidget{
  late AppConfigProvider provider ;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppConfigProvider>(context);
    initSharedPref();
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes:{
        HomeScreen.routeName : (context) =>HomeScreen(),
        SuraDetailsScreen.routeName : (context) =>SuraDetailsScreen(),
        HadethDetailsScreen.routeName : (context) =>HadethDetailsScreen(),
        TasbehTab.routeName : (context) => TasbehTab(),

      } ,
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      themeMode: provider.appTheme,
    );
  }
  void initSharedPref()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('language') ?? 'en';
    String theme = prefs.getString('theme') ?? 'light';
    provider.changeLanguage(lang);
    if(theme == 'light'){
      provider.changeTheme(ThemeMode.light);
    }else if (theme == 'dark'){
      provider.changeTheme(ThemeMode.dark);
    }
  }
}
