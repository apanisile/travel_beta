//@dart=2.9


import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String title;
  final String body;
  static const double hPad = 16.0;

  TextSection(this.title, this.body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(hPad, 32.0, hPad, 4.0),
            child: Text(title, style: Theme.of(context).textTheme.headline2,)),
        Container(
            padding: EdgeInsets.fromLTRB(hPad, 10.0, hPad, hPad),
            child: Text(body, style: Theme.of(context).textTheme.bodyText1,)),
      ],
    );
  }
}
