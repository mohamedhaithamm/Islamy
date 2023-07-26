import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio.png'),
        Text(
          'إذاعة القرآن الكريم',
                 style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.skip_next,color:MyThemeData.lightPrimary,size: 30)
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.play_arrow,color:MyThemeData.lightPrimary,size: 40)
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.skip_previous,color:MyThemeData.lightPrimary,size: 30)
            ),
          ],
        )
      ],
    );
  }
}
