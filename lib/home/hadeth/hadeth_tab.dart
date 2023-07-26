import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/hadeth_model.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/hadeth/item_hadeth_name.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if(hadethList.isEmpty){
      loadHadethFile();
    }

    return Column(
      children: [
        Expanded(
          flex: 1,
            child: Image.asset('assets/images/hadeth_logo_image.png')),
        Divider(
          color: MyThemeData.lightPrimary,
          thickness: 2,
        ),
        Text(AppLocalizations.of(context)!.sura_name,
            style: Theme.of(context).textTheme.headline2),
        Divider(
          color: MyThemeData.lightPrimary,
          thickness: 2,
        ),
        Expanded(
          flex: 3,
          child: hadethList.isEmpty ?
              Center(child: CircularProgressIndicator(),):

          ListView.separated(
            separatorBuilder: (context,index){
              return  Divider(
                color: MyThemeData.lightPrimary,
                thickness: 2,
              );
            },
            itemBuilder: (context,index){
              return ItemHadethName(hadeth: hadethList[index]);
            },
            itemCount: hadethList.length,
          ),
        )

      ],
    );
  }

  void loadHadethFile()async{
   String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
   List<String> allAhadethList = fileContent.split('#\r\n');
   for(int i = 0 ; i < allAhadethList.length ; i++){
    List<String> singeleHadeth = allAhadethList[i].split('\n');
    String title = singeleHadeth[0];
    singeleHadeth.remove(0);
    Hadeth hadeth = Hadeth(title: title, content: singeleHadeth);
    hadethList.add(hadeth);
   }
   setState(() {

   });
  }
}

