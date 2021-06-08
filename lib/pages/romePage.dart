import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'text_section.dart';
import 'widgets/scaffold.dart';


class RomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildEasyScaffold(
      appBarTitle: 'Rome',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('places/rome.jpg', fit: BoxFit.fitWidth),
          TextSection("About Rome", "Texts"),
        ],

      ),
    );
  }
}
