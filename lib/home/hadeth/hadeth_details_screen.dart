import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_model.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/hadeth/item_hadeeth_details.dart';
import 'package:islami_app/my_theme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth_details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


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
            '${args.title}',
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
          ListView.builder(

            itemBuilder: (context,index){
            return ItemHadethDetails(
              content: args.content[index],
            );
          },
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}