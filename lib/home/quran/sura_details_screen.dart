import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/quran/item_sura_details.dart';
import 'package:islami_app/my_theme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    if(verses.isEmpty){
      loadFile(args.index);
    }
    loadFile(args.index);
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          width: width*0.9,
          height: height*0.9,
          margin: EdgeInsets.only(left: width*0.05,right: width*0.05,bottom: height*0.06),
          decoration: BoxDecoration(
            color: MyThemeData.colorWhite,
            borderRadius: BorderRadius.circular(24),
          ),
          child:
              verses.isEmpty ?
              Center(child: CircularProgressIndicator()):

          ListView.separated(
    separatorBuilder: (context,index){
    return  Divider(
    color: MyThemeData.lightPrimary,
    thickness: 2,);},


            itemBuilder: (context,index){
            return ItemSuraDetails(text :verses[index],index: index,);
          },
            itemCount: verses.length,
          ),
        ),
      )
    ]);
  }

  void loadFile(int index)async{
   String fileContent = await rootBundle.loadString('assets/files/${index+1}.txt');
   List<String> lines = fileContent.split('\n');
   verses = lines ;
   setState(() {

   });
  }
}
class SuraDetailsArgs{
  String name ;
  int index ;
  SuraDetailsArgs({required this.name,required this.index});
}