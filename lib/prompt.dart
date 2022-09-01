import 'package:flutter/material.dart';
// this is for access to widget collection
import 'text_styles.dart';

class Prompt extends StatelessWidget {
  const Prompt({Key? key, required this.targetValue}) : super(key: key);
  //this is a constructor
  //used to create objects and set values to it
  // it takes a key, which is just a way for flutter to identify a widget
  final int targetValue;
  //field for random value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'PUT THE BULLSEYE AS CLOSE AS YOU CAN',
          style: LabelTextStyle.bodyText1(context),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$targetValue'),
        ),
        //the $ is used to access the value of the targetValue variable inside of the sting
      ],
    );
  }
}
