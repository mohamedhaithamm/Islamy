import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ThemingBottomSheet extends StatelessWidget {

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
              provider.changeTheme(ThemeMode.light);

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Light',
                style: Theme.of(context).textTheme.labelLarge,),
                provider.appTheme == ThemeMode.light ? Icon(Icons.check,color: Theme.of(context).primaryColor,) :Container()
              ],
            ),
          ),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark',
                style: Theme.of(context).textTheme.labelLarge,),
                provider.appTheme == ThemeMode.dark ? Icon(Icons.check,color: Theme.of(context).primaryColor,) :Container()

              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Widget selectedItemTheme(String text ,BuildContext context){
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text('Dark',
//         style: Theme.of(context).textTheme.headline5,),
//       Icon(Icons.check,color: Theme.of(context).primaryColor)
//     ],
//   );
// }
//
// Widget UnSelectedItemTheme(String text, BuildContext context){
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text('Dark',
//         style: Theme.of(context).textTheme.headline5,),
//     ],
//   );
// }