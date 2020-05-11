import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final String labelCard;
  final IconData iconCard;

  IconContent({this.labelCard, this.iconCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconCard,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(labelCard, style: kTextStyle),
      ],
    );
  }
}
