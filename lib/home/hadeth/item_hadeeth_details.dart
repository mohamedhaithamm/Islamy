import 'package:flutter/material.dart';

class ItemHadethDetails extends StatelessWidget {
  String content ;
  ItemHadethDetails({required this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text('$content)',
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
