import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              provider.changeLanguage('en');
            },
            child: provider.appLanguage == 'en'?
                getSelectedItemWidget(AppLocalizations.of(context)!.english, context)
                :getUnSelectedItemWidget(AppLocalizations.of(context)!.english, context)
          ),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');
            },
            child: provider.appLanguage == 'ar'?
                getSelectedItemWidget(AppLocalizations.of(context)!.arabic, context)
                :getUnSelectedItemWidget(AppLocalizations.of(context)!.arabic, context)
          ),
        ],
      ),
    );
  }
  Widget getSelectedItemWidget(String text,BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: Theme.of(context).textTheme.headline3,),
        Icon(Icons.check,color: Theme.of(context).primaryColor,)
      ],
    );
  }
  Widget getUnSelectedItemWidget(String text,BuildContext context){
    return Row(
      children: [
        Text(text,
          style: Theme.of(context).textTheme.headline2,),
      ],
    );
  }
}
