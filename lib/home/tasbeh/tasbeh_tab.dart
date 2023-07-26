import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class TasbehTab extends StatefulWidget {
  static const String routeName = 'tasbeh tab';

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int tasbehCounter = 0 ;
  List<String> tasbehList =
  [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'لا اله الا الله',
    'لا حول ولا قوه الا بالله',
  ];
  int index = 0 ;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head of seb7a.png'),
              InkWell(
                onTap: onTasbehTab,
                child: Padding(
                  padding: EdgeInsets.only(
                    top:MediaQuery.of(context).size.height * .095,
                    bottom: 24,
                  ),
                  child:Transform.rotate(
                    angle: angle,
                    child: Image.asset('assets/images/body of seb7a.png'),)
                ),
              ),
            ],
          ),
          Text(
            'عدد التسبيحات',
              style: Theme.of(context).textTheme.subtitle1,

          ),
          Container(
            margin: EdgeInsets.only(top:16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: MyThemeData.lightPrimary,
                borderRadius: BorderRadius.circular(26)),
            child: Text(tasbehCounter.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:16),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: MyThemeData.lightPrimary,
                borderRadius: BorderRadius.circular(26)),
            child: Text(tasbehList[index],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
  void onTasbehTab(){
    tasbehCounter++;
    if(tasbehCounter %33 ==0){
      index++;
    }
    if(index == tasbehList.length){
      index = 0 ;
    }
    angle += 360/55;
    setState(() {

    });
  }
}
